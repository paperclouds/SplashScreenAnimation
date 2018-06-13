//
//  ViewController.m
//  SplachScreenAnimation
//
//  Created by paperclouds on 2018/6/12.
//  Copyright © 2018年 hechang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor blackColor]];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self launchAnimation];
}

- (void)launchAnimation {
    UIViewController *viewController = [[UIStoryboard storyboardWithName:@"LaunchScreen" bundle:nil] instantiateViewControllerWithIdentifier:@"LaunchScreen"];
    UIView *logo = viewController.view.subviews[1];
    [logo removeFromSuperview];
    UIView *launchView = viewController.view;
    UIImageView *logoView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"placeholder_image"]];
    UIWindow *mainWindow = [UIApplication sharedApplication].keyWindow;
    logoView.frame = CGRectMake(105, 73, 164, 164);
    [mainWindow addSubview:launchView];
    [mainWindow addSubview:logoView];
    
  [UIView animateWithDuration:3.0f delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
         launchView.frame = CGRectMake(0, -79, mainWindow.frame.size.width, mainWindow.frame.size.height);
    } completion:^(BOOL finished) {
        [launchView removeFromSuperview];
        [logoView removeFromSuperview];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
