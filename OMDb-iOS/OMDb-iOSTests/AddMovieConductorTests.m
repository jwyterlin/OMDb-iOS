//
//  AddMovieConductorTests.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 27/11/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import <XCTest/XCTest.h>

// Conductor
#import "AddMovieConductor.h"

@interface AddMovieConductorTests : XCTestCase

@end

@implementation AddMovieConductorTests

-(void)setUp {
    
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
}

-(void)tearDown {
 
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    
    [super tearDown];
    
}

-(void)testInstantiate {
    
    AddMovieConductor *addMovieConductor = [AddMovieConductor new];
    
    XCTAssert( addMovieConductor );
    
}

-(void)testCreateMovie {
    
    AddMovieConductor *addMovieConductor = [AddMovieConductor new];
    
    [addMovieConductor createMovie];
    
}

@end
