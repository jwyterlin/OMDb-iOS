//
//  UIView+Helper.h
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 14/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Helper)

@property(nonatomic) CGFloat x;
@property(nonatomic) CGFloat y;
@property(nonatomic) CGFloat width;
@property(nonatomic) CGFloat height;

-(CGFloat)horizontalSpace;
-(CGFloat)verticalSpace;

@end
