//
//  MovieDetailViewControllerTests.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 14/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import <XCTest/XCTest.h>

// Controller
#import "MovieDetailViewController.h"

@interface MovieDetailViewControllerTests : XCTestCase

@end

@implementation MovieDetailViewControllerTests

-(void)setUp {
    
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
}

-(void)tearDown {
    
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    
    [super tearDown];
    
}

-(void)testMoviesViewControllerExists {
    
    MovieDetailViewController *movieDetailViewController = [MovieDetailViewController new];
    
    XCTAssert( movieDetailViewController );
    
}

@end
