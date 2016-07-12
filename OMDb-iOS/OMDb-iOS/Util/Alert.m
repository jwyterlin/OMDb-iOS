//
//  Alert.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 11/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "Alert.h"

@implementation Alert

-(UIAlertController *)showAlertMessage:(NSString *)message viewController:(UIViewController *)viewController {
    
    return [self showAlertMessage:message viewController:viewController dismissAfterOK:NO];
    
}

-(UIAlertController *)showAlertMessage:(NSString *)message viewController:(UIViewController *)viewController dismissAfterOK:(BOOL)dismissAfterOK {
    
    return [self showAlertMessage:message viewController:viewController dismissAfterOK:dismissAfterOK animated:YES];
    
}

-(UIAlertController *)showAlertTitle:(NSString *)title
                             message:(NSString *)message
                      viewController:(UIViewController *)viewController {
    
    return [self showAlertTitle:title message:message viewController:viewController dismissAfterOK:NO];
    
}

-(UIAlertController *)showAlertTitle:(NSString *)title
                             message:(NSString *)message
                      viewController:(UIViewController *)viewController
                      dismissAfterOK:(BOOL)dismissAfterOK {
    
    return [self showAlertTitle:title message:message viewController:viewController dismissAfterOK:dismissAfterOK animated:YES];
    
}

-(UIAlertController *)showAlertMessage:(NSString *)message
                        viewController:(UIViewController *)viewController
                        dismissAfterOK:(BOOL)dismissAfterOK
                              animated:(BOOL)animated {
    
    return [self showAlertTitle:nil message:message viewController:viewController dismissAfterOK:dismissAfterOK animated:animated];
    
}

-(UIAlertController *)showAlertTitle:(NSString *)title
                             message:(NSString *)message
                      viewController:(UIViewController *)viewController
                      dismissAfterOK:(BOOL)dismissAfterOK
                            animated:(BOOL)animated {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK"
                                                 style:UIAlertActionStyleDefault
                                               handler:^(UIAlertAction * action) {
                                                   
                                                   if ( dismissAfterOK ) {
                                                       
                                                       if ( viewController.navigationController ) {
                                                           [viewController.navigationController popViewControllerAnimated:animated];
                                                       } else {
                                                           [viewController dismissViewControllerAnimated:animated completion:nil];
                                                       }
                                                       
                                                   }
                                                   
                                               }];
    
    [alert addAction:ok];
    
    [viewController presentViewController:alert animated:YES completion:nil];
    
    return alert;
    
}

-(void)showError:(NSError *)error viewController:(UIViewController *)viewController {
    
    NSString *message = [NSString stringWithFormat:@"An error has occurred: %@\n\nFeel free to inform us about it via e-mail contact@mail.com.br.",error.localizedDescription];
    
    [self showAlertMessage:message viewController:viewController];
    
}

-(void)showNoConnectionWithViewController:(UIViewController *)viewController {
    [self showAlertMessage:@"No connection with internet" viewController:viewController];
}

@end
