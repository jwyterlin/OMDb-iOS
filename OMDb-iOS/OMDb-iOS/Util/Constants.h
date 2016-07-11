//
//  Constants.h
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 03/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Constants : NSObject

// Nib Name - Cell
extern NSString *const kNibNameMovieCell;

// Model - Keys

// Movie
extern NSString *const kMovieActors;
extern NSString *const kMovieAwards;
extern NSString *const kMovieCountry;
extern NSString *const kMovieDirector;
extern NSString *const kMovieGenre;
extern NSString *const kMovieLanguage;
extern NSString *const kMovieMetascore;
extern NSString *const kMoviePlot;
extern NSString *const kMoviePoster;
extern NSString *const kMovieRated;
extern NSString *const kMovieReleased;
extern NSString *const kMovieResponse;
extern NSString *const kMovieRuntime;
extern NSString *const kMovieTitle;
extern NSString *const kMovieType;
extern NSString *const kMovieWriter;
extern NSString *const kMovieYear;
extern NSString *const kMovieImdbID;
extern NSString *const kMovieImdbRating;
extern NSString *const kMovieImdbVotes;

// OMDB Parameter Keys
extern NSString *const kOMDBParameterGetByID;
extern NSString *const kOMDBParameterGetByTitle;
extern NSString *const kOMDBParameterType;
extern NSString *const kOMDBParameterYearRelease;
extern NSString *const kOMDBParameterPlot;
extern NSString *const kOMDBParameterDataTypeReturn;
extern NSString *const kOMDBParameterIncludeTomatoesRating;
extern NSString *const kOMDBParameterJSONPCallbackName;
extern NSString *const kOMDBParameterAPIVersion;
extern NSString *const kOMDBParameterSearchByTerm;
extern NSString *const kOMDBParameterSearchPage;

@end
