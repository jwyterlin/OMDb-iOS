//
//  Routes.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 05/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "Routes.h"

@implementation Routes

// Send all data requests to:
// http://www.omdbapi.com/?

// Poster API requests:
// http://img.omdbapi.com/?apikey=[yourkey]&

+(NSString *)API_TOKEN {
    
    return @"48cfc049";
    
}

+(NSString *)BASE_URL_API_GET {
    
    return @"http://www.omdbapi.com/";
    
}

+(NSString *)BASE_URL_API_POST {
    
    return @"http://img.omdbapi.com/";
    
}

@end
