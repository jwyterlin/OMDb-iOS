//
//  MovieService.h
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 11/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "GenericService.h"

// Model
#import "MovieModel.h"

@interface MovieService : GenericService

//--------------------------------------------------------------------------------------//
//                                                                                      //
// Get movie by Title                                                                   //
//                                                                                      //
//--------------------------------------------------------------------------------------//

-(void)movieWithTitle:(NSString *)title
              success:(void(^)(MovieModel *movie))success
              failure:(void(^)(BOOL hasNoConnection, NSError *error))failure;

-(void)movieWithTitle:(NSString *)title
              success:(void(^)(MovieModel *movie))success
              failure:(void(^)(BOOL hasNoConnection, NSError *error))failure
                 test:(void(^)(id responseData, NSError *error))test;

//--------------------------------------------------------------------------------------//
//                                                                                      //
// Search movie by Title                                                                //
//                                                                                      //
//--------------------------------------------------------------------------------------//

-(void)searchMovieWithTitle:(NSString *)title
                    success:(void(^)(NSArray<MovieModel *> *movies))success
                    failure:(void(^)(BOOL hasNoConnection, NSError *error))failure;

-(void)searchMovieWithTitle:(NSString *)title
                    success:(void(^)(NSArray<MovieModel *> *movies))success
                    failure:(void(^)(BOOL hasNoConnection, NSError *error))failure
                       test:(void(^)(id responseData, NSError *error))test;

@end
