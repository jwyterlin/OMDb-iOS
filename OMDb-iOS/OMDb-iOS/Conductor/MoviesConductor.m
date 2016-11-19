//
//  MoviesConductor.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 18/11/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "MoviesConductor.h"

// Service
#import "MovieService.h"

@interface MoviesConductor()

@property(nonatomic,strong) NSArray<MovieModel *> *movies;

@end

@implementation MoviesConductor

#pragma mark - Public methods

-(void)viewDidAppear {
    
    [self getMovies];
    
}

-(MovieModel *)movieAtIndex:(NSUInteger)index {
    
    if ( self.movies.count > index ) {
        
        MovieModel *movie = self.movies[index];
        
        return movie;
        
    }
    
    return nil;
    
}

-(NSUInteger)numberOfMovies {
    
    return self.movies.count;
    
}

#pragma mark - Private methods

-(void)getMovies {
    
    [[MovieService new] searchMovieWithTitle:@"The Lord of the Rings" success:^(NSArray<MovieModel *> *movies) {
        
        self.movies = movies;
        
        [self updateList];
        
    } failure:^(BOOL hasNoConnection, NSError *error) {
        
        if ( hasNoConnection ) {
            [self hasNoConnection];
            return;
        }
        
        if ( error ) {
            [self handleError:error];
            return;
        }
        
    }];
    
}

#pragma mark - Delegate methods

-(void)updateList {
    
    if ( self.delegateMoviesConductor )
        if ( [self.delegateMoviesConductor respondsToSelector:@selector(moviesConductorDelegate_updateList)] )
            [self.delegateMoviesConductor moviesConductorDelegate_updateList];
    
}

-(void)handleError:(NSError *)error {
    
    if ( self.delegateMoviesConductor )
        if ( [self.delegateMoviesConductor respondsToSelector:@selector(moviesConductorDelegate_handleError:)] )
            [self.delegateMoviesConductor moviesConductorDelegate_handleError:error];
    
}

-(void)hasNoConnection {
    
    if ( self.delegateMoviesConductor )
        if ( [self.delegateMoviesConductor respondsToSelector:@selector(moviesConductorDelegate_hasNoConnection)] )
            [self.delegateMoviesConductor moviesConductorDelegate_hasNoConnection];
    
}

#pragma mark - Lazy Instances

-(NSArray *)movies {
    
    if ( ! _movies )
        _movies = [NSArray new];
    return _movies;
    
}

@end
