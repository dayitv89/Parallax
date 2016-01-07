//
//  GameConfig.h
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameConfig : NSObject
- (void)setDefault;
@property (nonatomic, strong) NSString *const gameName;
@property (nonatomic, strong) NSString *const gameVersion;
@end

@protocol GameConfigDataSource <NSObject>
- (void)customGameConfig;
@end