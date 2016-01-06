//
//  ConfigManager.m
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import "ConfigManager.h"
#import "AppConfig.h"
#import "GameConfig.h"

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

- (void)testConfigProtocol {
    AppConfig *appConfig = [AppConfig new];
    NSLog(@"%@", [appConfig basicConfigName]);
    NSLog(@"%@", [appConfig basicConfigVersion]);
    NSLog(@"%@", [appConfig gameConfigName]);
    NSLog(@"%@", [appConfig gameConfigVersion]);
}

@end
