//
//  NetAPIClient.h
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 05/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AFHTTPSessionManager.h"

@interface NetAPIClient : AFHTTPSessionManager

+(instancetype)sharedClientGet;
+(instancetype)sharedClientPost;

@end
