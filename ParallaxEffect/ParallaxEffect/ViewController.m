//
//  ViewController.m
//  ParallaxEffect
//
//  Created by Gaurav on 22/03/15.
//  Copyright (c) 2015 ___iOS Technology___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
{
    IBOutlet UIImageView *imgView;
    
    IBOutlet UIScrollView *scrollView;
    
    CGRect imgViewFrame;

}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    //--- ios parallex effect
    // Set vertical effect
    UIInterpolatingMotionEffect *verticalMotionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y"
                                                                                                        type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    
    verticalMotionEffect.minimumRelativeValue = @(-20);
    
    verticalMotionEffect.maximumRelativeValue = @(20);
    
    // Set horizontal effect
    UIInterpolatingMotionEffect *horizontalMotionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x"
                                                                                                          type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    
    horizontalMotionEffect.minimumRelativeValue = @(-5);
    
    horizontalMotionEffect.maximumRelativeValue = @(5);
    
    // Create group to combine both
    UIMotionEffectGroup *group = [UIMotionEffectGroup new];
    
    group.motionEffects = @[verticalMotionEffect, horizontalMotionEffect ];
    
    // Add both effects to your view
    [imgView addMotionEffect:group];
    
    
    
    
    //-- set custom parallex effect setting
    [scrollView setDelegate:self];
    
    [scrollView setBackgroundColor:[UIColor clearColor]];
    
    [scrollView setContentInset:UIEdgeInsetsMake(0, 0,1200, 0)];
    
    imgViewFrame = imgView.frame;
    
    
}



- (void)scrollViewDidScroll:(UIScrollView *)scrollView1 {
    CGFloat scrollOffset = scrollView.contentOffset.y;
    
    imgView.frame = [self parallexFrame:imgViewFrame
                       withParallexView:imgView
                            scrollFrame:scrollView1.frame
                      withParallexValue:scrollOffset];
}

//-- parallax effect origal logic : when scroll down image zoom up, scroll up then speed of image frame is slow
- (CGRect)parallexFrame:(CGRect)frame
       withParallexView:(UIView*)viewParallex
            scrollFrame:(CGRect)scrollFrame
      withParallexValue:(CGFloat)val

{
    NSInteger factor = 4;
    if (val > 0) {
        return CGRectMake(frame.origin.x, frame.origin.y - val/factor, frame.size.width, frame.size.height);
    }
    
    return CGRectMake(frame.origin.x + val, frame.origin.y + val, frame.size.width - val*factor, frame.size.height - val*factor);
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
