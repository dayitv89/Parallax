//
//  ConfigManager.h
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicConfig.h"

@interface ConfigManager : NSObject
@property (nonatomic, strong) BasicConfig *basicConfig;
+ (instancetype)sharedInstance;
- (void)testConfigProtocol;

@end
