//
//  AppConfig.m
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import "AppConfig.h"

@implementation AppConfig

- (BasicConfig *)customBasicConfig {
    BasicConfig *basicConfig = [BasicConfig new];
    basicConfig.appName = @"custom app";
    basicConfig.appVersion = @"custom app version v 1.0";
    return basicConfig;
}

- (GameConfig*)customGameConfig {
    GameConfig *gameConfig = [GameConfig new];
    gameConfig.gameName = @"custom Game name";
    gameConfig.gameVersion = @"custom ve 2.0";
    return gameConfig;
}

@end