//
//  MoviesConductorTests.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 19/11/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import <XCTest/XCTest.h>

// Conductor
#import "MoviesConductor.h"

@interface MoviesConductorTests : XCTestCase<MoviesConductorDelegate> {
    
    XCTestExpectation *expectation;
    MoviesConductor *conductor;
    
}

@end

@implementation MoviesConductorTests

-(void)setUp {
 
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
}

-(void)tearDown {
    
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    
    [super tearDown];
    
}

-(void)testInstance {
    
    XCTAssert( [MoviesConductor new] );
    
}

-(void)testViewDidAppear {
    
    conductor = [MoviesConductor new];
    conductor.delegateMoviesConductor = self;
    
    [conductor viewDidAppear];
    
    expectation = [self expectationWithDescription:@"Testing Async Method Works!"];
    
    [self waitForExpectationsWithTimeout:5.0 handler:^(NSError *error) {
        
        if ( error ) {
            XCTFail( @"Expectation Failed with error: %@", error );
        }
        
    }];
    
}

#pragma mark - MoviesConductorDelegate methods

-(void)moviesConductorDelegate_updateList {
    
    XCTAssert( [conductor numberOfMovies] > 0, @"Should have some movies in the list" );
    
    MovieModel *movie = [conductor movieAtIndex:0];
    
    XCTAssert( movie, @"Should have a movie in the list" );
    
    [expectation fulfill];
    
}

-(void)moviesConductorDelegate_handleError:(NSError *)error {
    
    XCTFail( @"Error: %@", error );
    
    [expectation fulfill];
    
}

-(void)moviesConductorDelegate_hasNoConnection {
    
    XCTFail( @"Has no connection" );
    
    [expectation fulfill];
    
}

@end
