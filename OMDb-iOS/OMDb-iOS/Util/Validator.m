//
//  Validator.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 11/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "Validator.h"

@implementation Validator

+(BOOL)validateObject:(id)object {
    
    if ( object == nil )
        return NO;
    
    if ( [object isEqual:[NSNull null]] )
        return NO;
    
    if ( [object isKindOfClass:[NSString class]] )
        if ( [object isEqualToString:@"<null>"] )
            return NO;
    
    return YES;
    
}

+(BOOL)isEmptyString:(NSString *)string {
    
    if ( string == nil )
        return YES;
    
    if ( [string isEqual:[NSNull null]] )
        return YES;
    
    if ( [string isKindOfClass:[NSNumber class]] )
        return [[NSString stringWithFormat:@"%lld", [string longLongValue]] isEqualToString:@""];
    
    return [string isEqualToString:@""];
    
}

@end
