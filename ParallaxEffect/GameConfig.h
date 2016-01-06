//
//  GameConfig.h
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol GameConfigDataSource <NSObject>

@required
- (NSString*)gameConfigName;

@optional
- (NSString*)gameConfigVersion;

@end

@interface GameConfig : NSObject <GameConfigDataSource>

@end
