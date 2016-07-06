//
//  Connection.h
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 05/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Connection : NSObject

typedef enum {
    RequestMethodGet=0,
    RequestMethodPost,
    RequestMethodDelete,
    RequestMethodPut
} RequestMethod;

typedef enum {
    RequestSerializerHTTP=0,
    RequestSerializerJSON,
} RequestSerializer;

// Complete request method to the WebService
-(void)connectWithMethod:(RequestMethod)method
                     url:(NSString *)url
              parameters:(NSDictionary *)parameters
                 success:(void (^)(id responseData))success
                 failure:(void (^)(BOOL hasNoConnection, NSError *error))failure;

-(void)connectWithMethod:(RequestMethod)method
       requestSerializer:(RequestSerializer)requestSerializer
                     url:(NSString *)url
              parameters:(NSDictionary *)parameters
                 success:(void (^)(id responseData))success
                 failure:(void (^)(BOOL hasNoConnection, NSError *error))failure;

// Search the size in bytes of the file without download it from the server to verify that we update our cache.
+(void)contentLengthForPath:(NSString *)path completion:(void(^)(long long length))completion;

@end
