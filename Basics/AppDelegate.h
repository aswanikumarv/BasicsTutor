//
//  AppDelegate.h
//  Basics
//
//  Created by Stellent Software on 8/6/14.
//  Copyright (c) 2014 Stellent Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BasicsViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) BasicsViewController *basicVC;
@end
