//
//  NSObject+Clone.m
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 11/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import "NSObject+Clone.h"
#import <objc/runtime.h>

@implementation NSObject(Clone)

- (instancetype)clone {
    id objNew = [[self class] new];
    
    Class className = [self class];
    while (className) {
        [self copyIVAR:className andObject:objNew];
        className = class_getSuperclass(className);
    }
    return objNew;
}

- (void)copyIVAR:(Class)className andObject:(id)newObj{
    if (!className || ![self isKindOfClass:className] || ![self isMemberOfClass:[newObj class]]) {
        NSLog(@"Class is not well defined in cloning");
    } else {
        unsigned int count;
        Ivar* ivars = class_copyIvarList(className, &count);
        for(unsigned int i = 0; i < count; ++i) {
            NSString *key = [NSString stringWithFormat:@"%s",ivar_getName(ivars[i])];
            [newObj setValue:[self valueForKey:key]?:[NSNull null] forKey:key];
        }
    }
}

@end
