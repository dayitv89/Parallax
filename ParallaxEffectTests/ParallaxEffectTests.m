//
//  ParallaxEffectTests.m
//  ParallaxEffectTests
//
//  Created by Gaurav on 22/03/15.
//  Copyright (c) 2015 ___iOS Technology___. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface ParallaxEffectTests : XCTestCase
@property (nonatomic) ViewController *viewC;
@end

@implementation ParallaxEffectTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.viewC = [ViewController new];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAddingSuccess {
    XCTAssertEqual(15, [self.viewC addTwoNumbersA:5 intB:10]);
}

- (void)testAddingFail {
    XCTAssertEqual(16, [self.viewC addTwoNumbersA:5 intB:10]);
}


@end
