//
//  BasicConfig.m
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import "BasicConfig.h"

@implementation BasicConfig 

- (NSString*)basicConfigName {
    return @"BaseConfig class";
}

- (NSString*)basicConfigVersion {
    return @"bc1.0.0";
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    SEL aSelector = [anInvocation selector];
    if ([self respondsToSelector:aSelector]) {
        [super forwardInvocation:anInvocation];
    } else {
        Class c = NSClassFromString(@"GameConfig");
        id obj = [[c alloc] init];
        if ([obj respondsToSelector:aSelector]) {
            [anInvocation invokeWithTarget:obj];
        } else {
            NSLog(@"method not found %@", NSStringFromSelector(aSelector));
        }
    }
}

@end
