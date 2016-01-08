//
//  ConfigManager.m
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import <objc/runtime.h>
#import "ConfigManager.h"
#import "AppConfig.h"

@interface ConfigManager ()
@property (nonatomic, readwrite) BasicConfig *basicConfig;
@property (nonatomic, readwrite) GameConfig *gameConfig;
@end


@implementation ConfigManager

#pragma mark - Public Method

+ (instancetype)sharedInstance {
    static dispatch_once_t oncePredicate = 0;
    __strong static ConfigManager *_sharedInstance = nil;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[super alloc] init];
        [_sharedInstance setAllDataOnce];
    });
    return _sharedInstance;
}

- (BasicConfig *)basicConfig {
    return [self clone:_basicConfig];
}

- (GameConfig *)gameConfig {
    return [self clone:_gameConfig];
}

#pragma mark - Private Method
- (id)clone:(id)obj {
    id objNew = [[obj class] new];
    unsigned int count;
    Ivar* ivars = class_copyIvarList([obj class], &count);
    for(unsigned int i = 0; i < count; ++i) {
        NSString *key = [NSString stringWithFormat:@"%s",ivar_getName(ivars[i])];
        [objNew setValue:[obj valueForKey:key] forKey:key];
    }
    return objNew;
}

- (void)setAllDataOnce {
    _basicConfig = [[BasicConfig alloc] init];
    [self callDataSource];
}

- (void)callDataSource {
    AppConfig *appConfig = [AppConfig new];
    if ([appConfig conformsToProtocol:@protocol(BaseConfigDataSource)] &&
        [appConfig respondsToSelector:@selector(customBasicConfig)]) {
        _basicConfig = [appConfig performSelector:@selector(customBasicConfig)];
    }
    
    if ([appConfig conformsToProtocol:@protocol(GameConfigDataSource)] &&
        [appConfig respondsToSelector:@selector(customGameConfig)]) {
        _gameConfig = [appConfig performSelector:@selector(customGameConfig)];
    }
}


#pragma mark - Test method 
#pragma mark --temp -remove-it
- (void)testConfigProtocol {
    [ConfigManager sharedInstance].basicConfig.appName = @"test name";
    [ConfigManager sharedInstance].gameConfig.gameName = @"test game name";
    NSLog(@"%@",[ConfigManager sharedInstance].basicConfig.appName);
    NSLog(@"%@", [ConfigManager sharedInstance].basicConfig.appVersion);
    NSLog(@"%@", [ConfigManager sharedInstance].gameConfig.gameName);
    NSLog(@"%@", [ConfigManager sharedInstance].gameConfig.gameVersion);
}

@end

