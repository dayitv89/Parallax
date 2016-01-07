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

+ (ConfigManager*)sharedInstance;
- (void)testConfigProtocol;

@end
