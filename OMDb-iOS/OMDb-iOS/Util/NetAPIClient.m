//
//  NetAPIClient.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 05/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "NetAPIClient.h"

#import "Routes.h"

@implementation NetAPIClient

+(instancetype)sharedClientGet {
    
    static NetAPIClient *_sharedClientGet = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _sharedClientGet = [[NetAPIClient alloc] initWithBaseURL:[NSURL URLWithString:[Routes BASE_URL_API_GET]]];
        _sharedClientGet.responseSerializer = [AFJSONResponseSerializer serializer];
        _sharedClientGet.requestSerializer = [AFHTTPRequestSerializer serializer];
        
    });
    
    return _sharedClientGet;
    
}

+(instancetype)sharedClientPost {
    
    static NetAPIClient *_sharedClientPost = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _sharedClientPost = [[NetAPIClient alloc] initWithBaseURL:[NSURL URLWithString:[Routes BASE_URL_API_POST]]];
        _sharedClientPost.responseSerializer = [AFJSONResponseSerializer serializer];
        _sharedClientPost.requestSerializer = [AFHTTPRequestSerializer serializer];
        
    });
    
    return _sharedClientPost;
    
}

@end
