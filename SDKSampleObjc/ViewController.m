//
//  ViewController.m
//  SDKSampleObjc
//
//  Created by Vitor Magalhães on 05/07/2019.
//  Copyright © 2019 GYANT.com, Inc. All rights reserved.
//

#import "ViewController.h"
#import <GyantChatSDK/GyantChatSDK.h>

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(handleButtonAction)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Press me" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
}

- (void)handleButtonAction {
    UIViewController *chatVC = [GyantChat createChatViewController];
    [self presentViewController:chatVC animated:true completion:nil];
}

@end
