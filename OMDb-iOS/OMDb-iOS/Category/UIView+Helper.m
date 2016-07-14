//
//  UIView+Helper.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 14/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "UIView+Helper.h"

@implementation UIView (Helper)

-(void)setX:(CGFloat)x {
    
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
    
}

-(void)setY:(CGFloat)y {
    
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
    
}

-(void)setWidth:(CGFloat)width {
    
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
    
}

-(void)setHeight:(CGFloat)height {
    
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
    
}

-(CGFloat)x {
    return self.frame.origin.x;
}

-(CGFloat)y {
    return self.frame.origin.y;
}

-(CGFloat)width {
    return self.frame.size.width;
}

-(CGFloat)height {
    return self.frame.size.height;
}

-(CGFloat)horizontalSpace {
    
    return self.x + self.width;
    
}

-(CGFloat)verticalSpace {
    
    return self.y + self.height;
    
}

@end
