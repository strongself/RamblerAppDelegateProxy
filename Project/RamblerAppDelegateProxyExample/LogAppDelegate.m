//
//  LogAppDelegate.m
//  AppDelegateProxyExample
//
//  RamblerAppDelegateProxy
//  Copyright (c) 2015 Rambler DS. All rights reserved.
//

#import "LogAppDelegate.h"

@implementation LogAppDelegate

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(nullable NSDictionary *)launchOptions {
    NSLog(@"%@ %s", NSStringFromClass([self class]), __PRETTY_FUNCTION__);
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"%@ %s", NSStringFromClass([self class]), __PRETTY_FUNCTION__);
    return YES;
}

@end
