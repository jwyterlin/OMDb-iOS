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

-(void)testNibNameMovieCell {
    
    XCTAssert( [@"MovieCell" isEqualToString:kNibNameMovieCell] );
    
}

@end
