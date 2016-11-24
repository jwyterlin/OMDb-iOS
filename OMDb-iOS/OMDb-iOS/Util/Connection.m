//
//  Connection.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 05/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "Connection.h"

// Util
#import "NetAPIClient.h"
#import "Routes.h"

@implementation Connection

#pragma mark - Public methods

// Complete request method to the WebService
-(void)connectWithMethod:(RequestMethod)method
                     url:(NSString *)url
              parameters:(NSDictionary *)parameters
                 success:(void (^)(id responseData))success
                 failure:(void (^)(BOOL hasNoConnection, NSError *error))failure {
    
    [self connectWithMethod:method
          requestSerializer:RequestSerializerHTTP
                        url:url
                 parameters:parameters
                    success:success
                    failure:failure];
    
}

-(void)connectWithMethod:(RequestMethod)method
       requestSerializer:(RequestSerializer)requestSerializer
                     url:(NSString *)url
              parameters:(NSDictionary *)parameters
                 success:(void (^)(id responseData))success
                 failure:(void (^)(BOOL hasNoConnection, NSError *error))failure {
    
    if ( ! [self isNetworkReachable] ) {
        
        NSLog(@"has no connection");
        
        if (failure)
            failure(YES,nil);
        
        return;
        
    }
    
    // Set RequestSerializer
    if ( requestSerializer == RequestSerializerHTTP ) {
        
        if ( method == RequestMethodGet ) {
            [[NetAPIClient sharedClientGet] setRequestSerializer:[AFHTTPRequestSerializer serializer]];
        } else if ( method == RequestMethodPost ) {
            [[NetAPIClient sharedClientPost] setRequestSerializer:[AFHTTPRequestSerializer serializer]];
        }
        
    } else {
        
        if ( method == RequestMethodGet ) {
            [[NetAPIClient sharedClientGet] setRequestSerializer:[AFJSONRequestSerializer serializer]];
        } else if ( method == RequestMethodPost ) {
            [[NetAPIClient sharedClientPost] setRequestSerializer:[AFJSONRequestSerializer serializer]];
        }
        
    }
    
    void (^successBlock)(NSURLSessionTask *, id) = ^(NSURLSessionTask *task, id responseObject) {
        if ( success )
            success( responseObject );
    };
    
    void (^failureBlock)(NSURLSessionTask *, NSError *) = ^(NSURLSessionTask *operation, NSError *error) {
        if ( failure )
            failure( NO, error );
    };
    
    if ( method == RequestMethodGet ) {
    
        NSLog( @"url: %@%@",[[NetAPIClient sharedClientGet] baseURL], url );
        
        // Sents the GET to server and capture response object, giving back callbacks to consumer.
        [[NetAPIClient sharedClientGet] GET:url parameters:parameters progress:nil success:successBlock failure:failureBlock];
        
    } else if ( method == RequestMethodPost ) {
        
        NSLog( @"url: %@%@",[[NetAPIClient sharedClientPost] baseURL], url );
        
        // Sents the POST to server and capture response object, giving back callbacks to consumer.
        [[NetAPIClient sharedClientPost] POST:url parameters:parameters progress:nil success:successBlock failure:failureBlock];
        
    }
    
}

// Search the size in bytes of the file without download it from the server to verify that we update our cache.
+(void)contentLengthForPath:(NSString *)path completion:(void(^)(long long length))completion {
    
    path = [path stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    
    AFHTTPSessionManager *managerClient = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:path]];
    
    [managerClient HEAD:path parameters:nil success:^(NSURLSessionDataTask *task) {
        if (completion)
            completion(task.response.expectedContentLength);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (completion)
            completion(-1);
    }];
    
}

#pragma mark - Private methods

-(BOOL)isNetworkReachable {
    
    return YES;
    
//    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
//        NSLog( @"Reachability: %@", AFStringFromNetworkReachabilityStatus( status ) );
//    }];
//    
//    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
//    
//    return [[AFNetworkReachabilityManager sharedManager] isReachable];
    
}

@end
