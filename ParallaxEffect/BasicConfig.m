//
//  BasicConfig.m
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import "BasicConfig.h"

@implementation BasicConfig

- (instancetype)init {
    self = [super init];
    [self setDefault];
    return self;
}

- (void)setDefault {
    self.appName = @"App Default";
    self.appVersion = @"ac v1.0.0";
    self.index = 0;
    self.rect = CGRectZero;
}

@end
