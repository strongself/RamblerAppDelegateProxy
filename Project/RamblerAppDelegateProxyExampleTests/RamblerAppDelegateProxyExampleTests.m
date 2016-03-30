//
//  RamblerAppDelegateProxyExampleTests.m
//  RamblerAppDelegateProxyExampleTests
//
//  RamblerAppDelegateProxy
//  Copyright (c) 2015 Rambler DS. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <RamblerAppDelegateProxy.h>
#import "MockAppDelegate.h"

@interface RamblerAppDelegateProxyExampleTests : XCTestCase

@property (strong, nonatomic) RamblerAppDelegateProxy *proxy;

@end

@implementation RamblerAppDelegateProxyExampleTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testForwardAfterInjection {
    //given
    NSArray *appDelegates = @[[MockAppDelegate new], [MockAppDelegate new]];
    [[RamblerAppDelegateProxy injector] addAppDelegates:appDelegates];
    MockAppDelegate *singleAppDelegate = [MockAppDelegate new];
    [[RamblerAppDelegateProxy injector] addAppDelegate:singleAppDelegate];
    
    //when
    RamblerAppDelegateProxy *proxy = [[RamblerAppDelegateProxy alloc] init];
    [proxy application:nil didFinishLaunchingWithOptions:nil];
    
    //then
    XCTAssertTrue([[appDelegates firstObject] didFinishLaunchingWithOptions]);
    XCTAssertTrue([[appDelegates lastObject] didFinishLaunchingWithOptions]);
    XCTAssertTrue([singleAppDelegate didFinishLaunchingWithOptions]);
}

@end
