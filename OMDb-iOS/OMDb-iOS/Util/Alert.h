//
//  Alert.h
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 11/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Alert : NSObject

-(UIAlertController *)showAlertMessage:(NSString *)message
                        viewController:(UIViewController *)viewController;

-(UIAlertController *)showAlertMessage:(NSString *)message
                        viewController:(UIViewController *)viewController
                        dismissAfterOK:(BOOL)dismissAfterOK;

-(UIAlertController *)showAlertTitle:(NSString *)title
                             message:(NSString *)message
                      viewController:(UIViewController *)viewController;

-(UIAlertController *)showAlertTitle:(NSString *)title
                             message:(NSString *)message
                      viewController:(UIViewController *)viewController
                      dismissAfterOK:(BOOL)dismissAfterOK;

-(UIAlertController *)showAlertMessage:(NSString *)message
                        viewController:(UIViewController *)viewController
                        dismissAfterOK:(BOOL)dismissAfterOK
                              animated:(BOOL)animated;

-(UIAlertController *)showAlertTitle:(NSString *)title
                             message:(NSString *)message
                      viewController:(UIViewController *)viewController
                      dismissAfterOK:(BOOL)dismissAfterOK
                            animated:(BOOL)animated;

-(void)showError:(NSError *)error viewController:(UIViewController *)viewController;

-(void)showNoConnectionWithViewController:(UIViewController *)viewController;

@end
