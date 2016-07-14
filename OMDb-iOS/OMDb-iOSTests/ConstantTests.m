//
//  ConstantTests.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 03/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import <XCTest/XCTest.h>

// Util
#import "Constants.h"

@interface ConstantTests : XCTestCase

@end

@implementation ConstantTests

-(void)setUp {
    
    [super setUp];

    // Put setup code here. This method is called before the invocation of each test method in the class.
    
}

-(void)tearDown {
 
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    
    [super tearDown];
    
}

#pragma mark - Nib Name - Cell

-(void)testNibNameMovieCell {
    XCTAssert( [@"MovieCell" isEqualToString:kNibNameMovieCell] );
}

#pragma mark - Model - Keys

#pragma mark - Movie

-(void)testMovieActors {
    XCTAssert( [@"Actors" isEqualToString:kMovieActors] );
}

-(void)testMovieAwards {
    XCTAssert( [@"Awards" isEqualToString:kMovieAwards] );
}

-(void)testMovieCountry {
    XCTAssert( [@"Country" isEqualToString:kMovieCountry] );
}

-(void)testMovieDirector {
    XCTAssert( [@"Director" isEqualToString:kMovieDirector] );
}

-(void)testMovieGenre {
    XCTAssert( [@"Genre" isEqualToString:kMovieGenre] );
}

-(void)testMovieLanguage {
    XCTAssert( [@"Language" isEqualToString:kMovieLanguage] );
}

-(void)testMovieMetascore {
    XCTAssert( [@"Metascore" isEqualToString:kMovieMetascore] );
}

-(void)testMoviePlot {
    XCTAssert( [@"Plot" isEqualToString:kMoviePlot] );
}

-(void)testMoviePoster {
    XCTAssert( [@"Poster" isEqualToString:kMoviePoster] );
}

-(void)testMovieRated {
    XCTAssert( [@"Rated" isEqualToString:kMovieRated] );
}

-(void)testMovieReleased {
    XCTAssert( [@"Released" isEqualToString:kMovieReleased] );
}

-(void)testMovieResponse {
    XCTAssert( [@"Response" isEqualToString:kMovieResponse] );
}

-(void)testMovieRuntime {
    XCTAssert( [@"Runtime" isEqualToString:kMovieRuntime] );
}

-(void)testMovieTitle {
    XCTAssert( [@"Title" isEqualToString:kMovieTitle] );
}

-(void)testMovieType {
    XCTAssert( [@"Type" isEqualToString:kMovieType] );
}

-(void)testMovieWriter {
    XCTAssert( [@"Writer" isEqualToString:kMovieWriter] );
}

-(void)testMovieYear {
    XCTAssert( [@"Year" isEqualToString:kMovieYear] );
}

-(void)testMovieImdbID {
    XCTAssert( [@"imdbID" isEqualToString:kMovieImdbID] );
}

-(void)testMovieImdbRating {
    XCTAssert( [@"imdbRating" isEqualToString:kMovieImdbRating] );
}

-(void)testMovieImdbVotes {
    XCTAssert( [@"imdbVotes" isEqualToString:kMovieImdbVotes] );
}

#pragma mark - OMDB Parameter Keys

-(void)testOMDBParameterGetByID {
    XCTAssert( [@"i" isEqualToString:kOMDBParameterGetByID] );
}

-(void)testOMDBParameterGetByTitle {
    XCTAssert( [@"t" isEqualToString:kOMDBParameterGetByTitle] );
}

-(void)testOMDBParameterType {
    XCTAssert( [@"type" isEqualToString:kOMDBParameterType] );
}

-(void)testOMDBParameterYearRelease {
    XCTAssert( [@"y" isEqualToString:kOMDBParameterYearRelease] );
}

-(void)testOMDBParameterPlot {
    XCTAssert( [@"plot" isEqualToString:kOMDBParameterPlot] );
}

-(void)testOMDBParameterDataTypeReturn {
    XCTAssert( [@"r" isEqualToString:kOMDBParameterDataTypeReturn] );
}

-(void)testOMDBParameterIncludeTomatoesRating {
    XCTAssert( [@"tomatoes" isEqualToString:kOMDBParameterIncludeTomatoesRating] );
}

-(void)testOMDBParameterJSONPCallbackName {
    XCTAssert( [@"callback" isEqualToString:kOMDBParameterJSONPCallbackName] );
}

-(void)testOMDBParameterAPIVersion {
    XCTAssert( [@"v" isEqualToString:kOMDBParameterAPIVersion] );
}

-(void)testOMDBParameterSearchByTerm {
    XCTAssert( [@"s" isEqualToString:kOMDBParameterSearchByTerm] );
}

-(void)testOMDBParameterSearchPage {
    XCTAssert( [@"page" isEqualToString:kOMDBParameterSearchPage] );
}

#pragma mark - Result Keys

-(void)testSearch {
    XCTAssert( [@"Search" isEqualToString:kSearch] );
}

-(void)testResponse {
    XCTAssert( [@"Response" isEqualToString:kResponse] );
}

-(void)testError {
    XCTAssert( [@"Error" isEqualToString:kError] );
}

@end
