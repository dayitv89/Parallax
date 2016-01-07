//
//  BasicConfig.h
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import "BaseSetter.h"
#import "GameConfig.h"


@interface BasicConfig : BaseSetter

@property (nonatomic, readonly) GameConfig * gameConfig;

@property (nonatomic, strong) NSString *appName;
@property (nonatomic, strong) NSString *appVersion;

@end

@protocol BaseConfigDataSource <NSObject>
- (void)customBasicConfig;
@end