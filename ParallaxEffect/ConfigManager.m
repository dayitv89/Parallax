//
//  ConfigManager.m
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import "ConfigManager.h"
#import "AppConfig.h"

@interface ConfigManager ()
@end

@implementation ConfigManager

#pragma mark - Public Method

+ (instancetype)sharedInstance {
    static dispatch_once_t oncePredicate = 0;
    __strong static ConfigManager *_sharedInstance = nil;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}


- (instancetype)init {
    self = [super init];
    if (!_basicConfig) {
        _basicConfig = [[AppConfig alloc] init];
    }
    return self;
}

- (void)testConfigProtocol {
    [[ConfigManager alloc]init].basicConfig.appName = @"test name";
    NSLog(@"abc %@", [[ConfigManager alloc]init].basicConfig.appName);
    NSLog(@"2%@", [ConfigManager sharedInstance].basicConfig.appVersion);
    NSLog(@"3%@", [ConfigManager sharedInstance].basicConfig.gameConfig.gameName);
    NSLog(@"4%@", [ConfigManager sharedInstance].basicConfig.gameConfig.gameVersion);
}

@end

