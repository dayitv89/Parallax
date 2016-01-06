//
//  BasicConfig.h
//  ParallaxEffect
//
//  Created by Gaurav Sharma on 06/01/16.
//  Copyright © 2016 ___iOS Technology___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameConfig.h"

@protocol BasicConfigDataSource <NSObject>
@required
- (NSString*)basicConfigName;
- (NSString*)basicConfigVersion;
@end

@interface BasicConfig : NSObject <BasicConfigDataSource>

@end
