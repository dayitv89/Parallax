//
//  BasicConfig.m
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import "BasicConfig.h"
#import "GameConfig.h"

@implementation BasicConfig

- (instancetype)init {
    self = [super init];
    _gameConfig = [GameConfig new];
    [self callDataSource];
    [self setDefault];
    return self;
}

- (void)setDefault {
    self.appName = @"App Default";
    self.appVersion = @"ac v1.0.0";
    [self.gameConfig setDefault];
}

- (void)callDataSource {
    if ([self conformsToProtocol:@protocol(BaseConfigDataSource)] &&
        [self respondsToSelector:@selector(customBasicConfig)]) {
        [self performSelector:@selector(customBasicConfig)];
    }
    
    if ([self conformsToProtocol:@protocol(GameConfigDataSource)] &&
        [self respondsToSelector:@selector(customGameConfig)]) {
        [self performSelector:@selector(customGameConfig)];
    }
}

@end
