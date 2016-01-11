//
//  ParallaxEffectUITests.m
//  ParallaxEffectUITests
//
//  Created by Gaurav Sharma on 04/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface ParallaxEffectUITests : XCTestCase

@end

@implementation ParallaxEffectUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testScroll {
    
//    XCUIApplication *app = [[XCUIApplication alloc] init];
//    [app.scrollViews.images[@"bg.png"] tap];
//    
//    XCUIElement *textView = [app.scrollViews childrenMatchingType:XCUIElementTypeTextView].element;
//    [textView tap];
//    [[app.scrollViews containingType:XCUIElementTypeImage identifier:@"bg.png"].element tap];
//    [textView swipeDown];
//    [textView tap];
//    [textView tap];
    XCUIElementQuery *scrollViewsQuery = [[XCUIApplication alloc] init].scrollViews;
    XCUIElement *image = [[scrollViewsQuery childrenMatchingType:XCUIElementTypeImage] elementBoundByIndex:1];
    //[self waitForExpectationsWithTimeout:15 handler:nil];
    [image swipeUp];
    [image swipeDown];
    [image swipeDown];
    
}

@end
