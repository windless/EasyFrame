//
//  EFViewController.m
//  EasyFrame
//
//  Created by Abner Zhong on 10/30/2014.
//  Copyright (c) 2014 Abner Zhong. All rights reserved.
//

#import "EFViewController.h"
#import <UIView+EasyFrame.h>

@interface EFViewController ()

@end

@implementation EFViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor whiteColor];
  UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 300, 400)];
  view.backgroundColor = [UIColor redColor];
  view.ef_xleft = 50;
  NSLog(@"Rect: %@", NSStringFromCGRect(view.frame));
  [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
