//
//  ConfigManager.h
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicConfig.h"
#import "GameConfig.h"

@interface ConfigManager : NSObject

@property (nonatomic, readonly) BasicConfig *basicConfig;
@property (nonatomic, readonly) GameConfig *gameConfig;


+ (instancetype)sharedInstance;

//-- temp testing method
- (void)testConfigProtocol;

@end
