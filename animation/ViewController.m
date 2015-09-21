//
//  ViewController.m
//  animation
//
//  Created by OBS_Macmini on 9/15/15.
//  Copyright (c) 2015 OptisolBusinessSolutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize image;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self display];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)display
{
    CGFloat leftrightMinvalue=-60.0f;
    CGFloat leftrightMaxvalue=100.0f;
    
    CGFloat updownMinvalue=-35.0f;
    CGFloat updownMaxvalue=100.0f;
    UIInterpolatingMotionEffect *motionEffect= [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x"
                                                                                               type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    motionEffect.minimumRelativeValue = @(leftrightMinvalue);
    motionEffect.maximumRelativeValue = @(leftrightMaxvalue);
    [image addMotionEffect:motionEffect];
    
    UIInterpolatingMotionEffect *motionEffectUpdown = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y"
                                                                                                      type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    motionEffectUpdown.minimumRelativeValue = @(updownMinvalue);
    motionEffectUpdown.maximumRelativeValue = @(updownMaxvalue);
    
    UIMotionEffectGroup *motionGroup=[[UIMotionEffectGroup alloc]init];
    motionGroup.motionEffects=@[motionEffect,motionEffectUpdown];
    [image addMotionEffect:motionGroup];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
