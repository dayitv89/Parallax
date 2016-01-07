//
//  BasicConfig.h
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameConfig.h"


@interface BasicConfig : NSObject

@property (nonatomic, readonly) GameConfig * gameConfig;

@property (nonatomic, strong) NSString * const appName;
@property (nonatomic, strong) NSString * const appVersion;
@end

@protocol BaseConfigDataSource <NSObject>
- (void)customBasicConfig;
@end