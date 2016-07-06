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
    
    [self connectWithMethod:method requestSerializer:RequestSerializerHTTP url:url parameters:parameters  success:^(id responseData) {
        if (success)
            success(responseData);
    } failure:^(BOOL hasNoConnection, NSError *error) {
        if (failure)
            failure(hasNoConnection,error);
    }];
    
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
        [[NetAPIClient sharedClient] setRequestSerializer:[AFHTTPRequestSerializer serializer]];
    } else {
        [[NetAPIClient sharedClient] setRequestSerializer:[AFJSONRequestSerializer serializer]];
    }
    
//    [[NetAPIClient sharedClient].requestSerializer setValue:@"value" forHTTPHeaderField:@"key"];

    NSLog( @"url: %@%@",[[NetAPIClient sharedClient] baseURL], url );
    
    if ( method == RequestMethodGet ) {
        
        // Sents the GET to server and capture response object, giving back callbacks to consumer.
        [[NetAPIClient sharedClient] GET:url parameters:parameters progress:nil success:^(NSURLSessionTask *task, id responseObject) {
            if (success)
                success(responseObject);
        } failure:^(NSURLSessionTask *operation, NSError *error) {
            if (failure)
                failure(NO, error);
        }];
        
    } else if ( method == RequestMethodPost ) {
        
        // Sents the POST to server and capture response object, giving back callbacks to consumer.
        [[NetAPIClient sharedClient] POST:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            if (success)
                success(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            if (failure)
                failure(NO, error);
        }];
        
    } else if ( method == RequestMethodDelete ) {
        
        // Sents the DELETE to server and capture response object, giving back callbacks to consumer.
        [[NetAPIClient sharedClient] DELETE:url parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
            if (success)
                success(responseObject);
        } failure:^(NSURLSessionDataTask *task, NSError *error) {
            if (failure)
                failure(NO, error);
        }];
        
    } else if ( method == RequestMethodPut ) {
        
        // Sents the PUT to server and capture response object, giving back callbacks to consumer.
        [[NetAPIClient sharedClient] PUT:url parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
            if (success)
                success(responseObject);
        } failure:^(NSURLSessionDataTask *task, NSError *error) {
            if (failure)
                failure(NO, error);
        }];
        
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
    
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        NSLog( @"Reachability: %@", AFStringFromNetworkReachabilityStatus( status ) );
    }];
    
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    
    return [[AFNetworkReachabilityManager sharedManager] isReachable];
    
}

@end
