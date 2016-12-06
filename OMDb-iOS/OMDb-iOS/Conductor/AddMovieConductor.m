//
//  AddMovieConductor.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 20/11/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "AddMovieConductor.h"

@implementation AddMovieConductor

#pragma mark - Public methods

-(void)createMovie:(NSString *)movieName {
    
    if ( ! movieName ) {
        return;
    }
    
    if ( [movieName isEqualToString:@""] ) {
        return;
    }
        
    // TODO: Validate movie name typed
    // TODO: If it's valid, call a method to create the movie in the server
    
}

@end
