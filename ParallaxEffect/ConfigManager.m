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

+ (id)sharedInstance {
    static ConfigManager *SINGLETON = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SINGLETON = [[ConfigManager alloc] init];
    });
    return SINGLETON;
}

- (instancetype)init {
    self = [super init];
    _basicConfig = [AppConfig new];
    return self;
}

- (void)testConfigProtocol {
    NSLog(@"%@", [ConfigManager sharedInstance].basicConfig.appName);
    NSLog(@"%@", [ConfigManager sharedInstance].basicConfig.appVersion);
    NSLog(@"%@", [ConfigManager sharedInstance].basicConfig.gameConfig.gameName);
    NSLog(@"%@", [ConfigManager sharedInstance].basicConfig.gameConfig.gameVersion);
}

@end

