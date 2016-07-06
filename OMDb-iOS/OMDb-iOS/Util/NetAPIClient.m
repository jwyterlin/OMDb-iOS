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

+(instancetype)sharedClient {
    
    static NetAPIClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _sharedClient = [[NetAPIClient alloc] initWithBaseURL:[NSURL URLWithString:[Routes BASE_URL_API]]];
        _sharedClient.responseSerializer = [AFJSONResponseSerializer serializer];
        _sharedClient.requestSerializer = [AFHTTPRequestSerializer serializer];
        
    });
    
    return _sharedClient;
}

@end
