//
//  BasicConfig.h
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Clone.h"

@interface BasicConfig : NSObject

@property (nonatomic, strong) NSString *appName;
@property (nonatomic, strong) NSString *appVersion;
@property (nonatomic) NSInteger index;
@property (nonatomic) CGRect rect;

- (instancetype)init;

@end


@protocol BaseConfigDataSource <NSObject>
- (BasicConfig*)customBasicConfig;
@end