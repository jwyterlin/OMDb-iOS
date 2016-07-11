//
//  MovieService.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 11/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "MovieService.h"

@implementation MovieService

//--------------------------------------------------------------------------------------//
//                                                                                      //
// Get movie by Title                                                                   //
//                                                                                      //
//--------------------------------------------------------------------------------------//

-(void)movieWithTitle:(NSString *)title
              success:(void(^)(MovieModel *movie))success
              failure:(void(^)(BOOL hasNoConnection, NSError *error))failure {
    
    [self movieWithTitle:title success:^(MovieModel *movie) {
        
        if ( success ) {
            success( movie );
        }
        
    } failure:^(BOOL hasNoConnection, NSError *error) {
        
        if ( failure ) {
            failure( hasNoConnection, error );
        }
        
    } test:^(id responseData, NSError *error) {
        
        // Do nothing
        
    }];
    
}

-(void)movieWithTitle:(NSString *)title
              success:(void(^)(MovieModel *movie))success
              failure:(void(^)(BOOL hasNoConnection, NSError *error))failure
                 test:(void(^)(id responseData, NSError *error))test {
    
    NSDictionary *parameters = @{kOMDBParameterGetByTitle:title,
                                 kOMDBParameterDataTypeReturn:@"json"};
    
    [[Connection new] connectWithMethod:RequestMethodGet url:@"" parameters:parameters success:^(id responseData) {
       
        if ( test )
            test( responseData, nil );
        
        NSDictionary *result = (NSDictionary *)responseData;
        
        if ( result.count == 0 ) {
            if ( success ) {
                success( nil );
            }
            return;
        }
        
        MovieModel *movie = [[MovieModel new] setupWithJson:result];
        
        if ( success )
            success( movie );
        
    } failure:^(BOOL hasNoConnection, NSError *error) {
        
        if ( test )
            test( nil, error );
        
        if ( failure )
            failure( hasNoConnection, error );
        
    }];
    
}

//--------------------------------------------------------------------------------------//
//                                                                                      //
// Search movie by Title                                                                //
//                                                                                      //
//--------------------------------------------------------------------------------------//

-(void)searchMovieWithTitle:(NSString *)title
                    success:(void(^)(NSArray<MovieModel *> *movies))success
                    failure:(void(^)(BOOL hasNoConnection, NSError *error))failure {
    
    [self searchMovieWithTitle:title success:^(NSArray<MovieModel *> *movies) {
        
        if ( success ) {
            success( movies );
        }
        
    } failure:^(BOOL hasNoConnection, NSError *error) {
        
        if ( failure ) {
            failure( hasNoConnection, error );
        }
        
    } test:^(id responseData, NSError *error) {
        
        // Do nothing
        
    }];
    
}

-(void)searchMovieWithTitle:(NSString *)title
                    success:(void(^)(NSArray<MovieModel *> *movies))success
                    failure:(void(^)(BOOL hasNoConnection, NSError *error))failure
                       test:(void(^)(id responseData, NSError *error))test {
    
    NSDictionary *parameters = @{kOMDBParameterSearchByTerm:title,
                                 kOMDBParameterDataTypeReturn:@"json"};
    
    [[Connection new] connectWithMethod:RequestMethodGet url:@"" parameters:parameters success:^(id responseData) {
        
        if ( test )
            test( responseData, nil );
        
        NSArray *result = (NSArray *)responseData;
        
        if ( result.count == 0 ) {
            if ( success ) {
                success( nil );
            }
            return;
        }
        
        NSArray *movies = [[MovieModel new] setupListWithJson:result];
        
        if ( success )
            success( movies );
        
    } failure:^(BOOL hasNoConnection, NSError *error) {
        
        if ( test )
            test( nil, error );
        
        if ( failure )
            failure( hasNoConnection, error );
        
    }];
    
}

@end
