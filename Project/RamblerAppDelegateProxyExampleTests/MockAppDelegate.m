//
//  MockAppDelegate.m
//  AppDelegateProxyExample
//
//  RamblerAppDelegateProxy
//  Copyright (c) 2015 Rambler DS. All rights reserved.
//

#import "MockAppDelegate.h"

@implementation MockAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.didFinishLaunchingWithOptions = YES;
    return YES;
}

@end
