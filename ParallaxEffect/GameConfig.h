//
//  GameConfig.h
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import "BaseSetter.h"

@interface GameConfig : BaseSetter
- (void)setDefault;
@property (nonatomic, strong) NSString *gameName;
@property (nonatomic, strong) NSString *gameVersion;
@end

@protocol GameConfigDataSource <NSObject>
- (void)customGameConfig;
@end