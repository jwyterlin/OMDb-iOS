//
//  MovieModel.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 03/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "MovieModel.h"

@implementation MovieModel

#pragma mark - Overriding super methods

-(MovieModel *)setupWithJson:(NSDictionary *)json {
    
    if ( ! [Validator validateObject:json] )
        return nil;
    
    return [[MovieModel new] newMovieWithJson:json];
    
}

#pragma mark - Private methods

-(MovieModel *)newMovieWithJson:(NSDictionary *)json {
    
    if ( json[kMovieActors] )
        _actors = json[kMovieActors];
    
    if ( json[kMovieAwards] )
        _awards = json[kMovieAwards];
    
    if ( json[kMovieCountry] )
        _country = json[kMovieCountry];
    
    if ( json[kMovieDirector] )
        _director = json[kMovieDirector];
    
    if ( json[kMovieGenre] )
        _genre = json[kMovieGenre];
    
    if ( json[kMovieLanguage] )
        _language = json[kMovieLanguage];
    
    if ( json[kMovieMetascore] )
        _metascore = json[kMovieMetascore];
    
    if ( json[kMoviePlot] )
        _plot = json[kMoviePlot];
    
    if ( json[kMoviePoster] )
        _urlPoster = json[kMoviePoster];
    
    if ( json[kMovieRated] )
        _rated = json[kMovieRated];
    
    if ( json[kMovieReleased] )
       _released = json[kMovieReleased];
    
    if ( json[kMovieResponse] )
      _response = [NSNumber numberWithBool:[json[kMovieResponse] boolValue]]; // Bool
    
    if ( json[kMovieRuntime] )
        _runtime = json[kMovieRuntime];
    
    if ( json[kMovieTitle] )
        _title = json[kMovieTitle];
    
    if ( json[kMovieType] )
        _type = json[kMovieType];
    
    if ( json[kMovieWriter] )
        _writer = json[kMovieWriter];
    
    if ( json[kMovieYear] )
        _year = json[kMovieYear];
    
    if ( json[kMovieImdbID] )
        _imdbID = json[kMovieImdbID];
    
    if ( json[kMovieImdbRating] )
        _imdbRating = [NSNumber numberWithFloat:[json[kMovieImdbRating] floatValue]]; // Float
    
    if ( json[kMovieImdbVotes] )
        _imdbVotes = [NSNumber numberWithInteger:[json[kMovieImdbVotes] integerValue]]; // Integer
    
    return self;
    
}

@end
