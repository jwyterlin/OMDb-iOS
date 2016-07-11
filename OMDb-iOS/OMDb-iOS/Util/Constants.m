//
//  Constants.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 03/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "Constants.h"

@implementation Constants

// Nib Name - Cell
NSString *const kNibNameMovieCell = @"MovieCell";

// Model - Keys

// Movie
NSString *const kMovieActors = @"Actors";
NSString *const kMovieAwards = @"Awards";
NSString *const kMovieCountry = @"Country";
NSString *const kMovieDirector = @"Director";
NSString *const kMovieGenre = @"Genre";
NSString *const kMovieLanguage = @"Language";
NSString *const kMovieMetascore = @"Metascore";
NSString *const kMoviePlot = @"Plot";
NSString *const kMoviePoster = @"Poster";
NSString *const kMovieRated = @"Rated";
NSString *const kMovieReleased = @"Released";
NSString *const kMovieResponse = @"Response";
NSString *const kMovieRuntime = @"Runtime";
NSString *const kMovieTitle = @"Title";
NSString *const kMovieType = @"Type";
NSString *const kMovieWriter = @"Writer";
NSString *const kMovieYear = @"Year";
NSString *const kMovieImdbID = @"imdbID";
NSString *const kMovieImdbRating = @"imdbRating";
NSString *const kMovieImdbVotes = @"imdbVotes";

// OMDB Parameter Keys
NSString *const kOMDBParameterGetByID = @"i";
NSString *const kOMDBParameterGetByTitle = @"t";
NSString *const kOMDBParameterType = @"type";
NSString *const kOMDBParameterYearRelease = @"y";
NSString *const kOMDBParameterPlot = @"plot";
NSString *const kOMDBParameterDataTypeReturn = @"r";
NSString *const kOMDBParameterIncludeTomatoesRating = @"tomatoes";
NSString *const kOMDBParameterJSONPCallbackName = @"callback";
NSString *const kOMDBParameterAPIVersion = @"v";
NSString *const kOMDBParameterSearchByTerm = @"s";
NSString *const kOMDBParameterSearchPage = @"page";

@end
