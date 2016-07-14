//
//  DeviceInfo.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 13/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "DeviceInfo.h"
#import <UIKit/UIScreen.h>

@implementation DeviceInfo

+(CGFloat)height {
    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    return screenBounds.size.height;
    
}

+(CGFloat)width {
    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    return screenBounds.size.width;
    
}

@end
