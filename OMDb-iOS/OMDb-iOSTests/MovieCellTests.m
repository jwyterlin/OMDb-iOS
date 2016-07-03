//
//  MovieCellTests.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 03/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import <XCTest/XCTest.h>

// View
#import "MovieCell.h"

@interface MovieCellTests : XCTestCase

@end

@implementation MovieCellTests

-(void)setUp {
 
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

-(void)tearDown {
 
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    
    [super tearDown];
    
}

-(void)testMovieCellExists {
    
    MovieCell *movieCell = [MovieCell new];
    
    XCTAssert( movieCell );
    
}

@end
