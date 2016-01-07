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
    self.gameConfig = [[GameConfig alloc] init];
    [self callDataSource];
    [self setDefault];
    return self;
}

- (void)setDefault {
    _appName = @"App Default";
    _appVersion = @"ac v1.0.0";
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

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    SEL sel = anInvocation.selector;
    SEL selGetter;
    NSString *strSelSetter = NSStringFromSelector(sel);
    if ([strSelSetter hasPrefix:@"set"]) {
        NSString *strSelGetter = [strSelSetter substringFromIndex:2];
        selGetter = NSSelectorFromString(strSelGetter);
        if ([self respondsToSelector:selGetter]) {
            if (![self performSelector:selGetter]) {
                [super forwardInvocation:anInvocation];
            }
        } else {
            [super forwardInvocation:anInvocation];
        }
    } else {
        [super forwardInvocation:anInvocation];
    }
}

@end
