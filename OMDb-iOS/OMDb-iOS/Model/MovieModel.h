//
//  MovieModel.h
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 03/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "GenericModel.h"

@interface MovieModel : GenericModel

@property(nonatomic,readonly) NSString *actors;
@property(nonatomic,readonly) NSString *awards;
@property(nonatomic,readonly) NSString *country;
@property(nonatomic,readonly) NSString *director;
@property(nonatomic,readonly) NSString *genre;
@property(nonatomic,readonly) NSString *language;
@property(nonatomic,readonly) NSNumber *metascore;
@property(nonatomic,readonly) NSString *plot;
@property(nonatomic,readonly) NSString *urlPoster;
@property(nonatomic,strong) NSData *poster;
@property(nonatomic,readonly) NSString *rated;
@property(nonatomic,readonly) NSString *released; // Should be a Date
@property(nonatomic,readonly) NSNumber *response; // Bool
@property(nonatomic,readonly) NSString *runtime;
@property(nonatomic,readonly) NSString *title;
@property(nonatomic,readonly) NSString *type;
@property(nonatomic,readonly) NSString *writer;
@property(nonatomic,readonly) NSNumber *year;
@property(nonatomic,readonly) NSString *imdbID;
@property(nonatomic,readonly) NSNumber *imdbRating; // Float
@property(nonatomic,readonly) NSNumber *imdbVotes; // Integer

@end
