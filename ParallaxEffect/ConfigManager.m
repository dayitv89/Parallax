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
@property (nonatomic, readonly) BasicConfig *basicConfig;
@property (nonatomic, readonly) GameConfig *gameConfig;
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
    _gameConfig = [GameConfig new];
    return self;
}

- (void)testConfigProtocol {
    NSLog(@"%@", [ConfigManager sharedInstance].basicConfig.appName);
    NSLog(@"%@", [ConfigManager sharedInstance].basicConfig.appVersion);
    NSLog(@"%@", [ConfigManager sharedInstance].gameConfig.gameName);
    NSLog(@"%@", [ConfigManager sharedInstance].gameConfig.gameVersion);
}

//
//- (id)processSelector:(SEL)selector {
//    AppConfig *appConfig = [AppConfig new];
//    if ([appConfig respondsToSelector:selector]) {
//        return [appConfig performSelector:selector];
//    } else {
//        GameConfig *gameConfig = [GameConfig new];
//        return [gameConfig performSelector:selector];
//    }
//    return nil;
//}

@end

