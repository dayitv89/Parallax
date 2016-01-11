//
//  GameConfig.m
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import "GameConfig.h"

@implementation GameConfig

- (instancetype)init {
    self = [super init];
    [self setDefault];
    return self;
}

- (void)setDefault {
    self.gameName = @"Game Default";
    self.gameVersion = @"gc v1.0.0";
}

@end
