//
//  MoviesConductor.h
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 18/11/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Model
#import "MovieModel.h"

@protocol MoviesConductorDelegate;

@interface MoviesConductor : NSObject

@property(nonatomic,weak) id<MoviesConductorDelegate> delegateMoviesConductor;

-(void)viewDidAppear;

-(MovieModel *)movieAtIndex:(NSUInteger)index;

-(NSUInteger)numberOfMovies;

@end

@protocol MoviesConductorDelegate <NSObject>

-(void)moviesConductorDelegate_updateList;
-(void)moviesConductorDelegate_handleError:(NSError *)error;
-(void)moviesConductorDelegate_hasNoConnection;

@end
