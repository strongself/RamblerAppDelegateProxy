//
//  main.m
//  RamblerAppDelegateProxyExample
//
//  Created by Smal Vadim on 30/03/16.
//  Copyright © 2016 Vadim Smal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RamblerAppDelegateProxy.h>
#import "LogAppDelegate.h"
#import "RemoteNotificationAppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        /**
         @author Vadim Smal
         
         Dependency injection
         */
        [[RamblerAppDelegateProxy injector] addAppDelegates:@[[LogAppDelegate new], [RemoteNotificationAppDelegate new]]];
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([RamblerAppDelegateProxy class]));
    }
}
