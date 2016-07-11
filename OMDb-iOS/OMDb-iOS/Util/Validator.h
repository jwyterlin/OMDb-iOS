//
//  Validator.h
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 11/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Validator : NSObject

+(BOOL)validateObject:(id)object;
+(BOOL)isEmptyString:(NSString *)string;

@end
