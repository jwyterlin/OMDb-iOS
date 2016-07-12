//
//  Error.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 11/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "Error.h"

// Util
#import "Constants.h"

@implementation Error

+(NSError *)errorWithResponseData:(id)responseData {
    
    NSString *descriptionError = @"Connection Error.";
    
    if ( [responseData isKindOfClass:[NSDictionary class]] || [responseData isKindOfClass:[NSMutableDictionary class]] )
        if ( responseData[kError] )
            descriptionError = responseData[kError];
    
    NSDictionary *userInfo = @{NSLocalizedDescriptionKey:descriptionError};
    NSError *error = [NSError errorWithDomain:@"OMDB" code:1 userInfo:userInfo];
    
    return error;
    
}

@end
