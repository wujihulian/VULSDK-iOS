//
//  AppDelegate.m
//  VULSDK_Demo
//
//  Created by yuekewei on 2020/9/28.
//  Copyright © 2020 svnlan. All rights reserved.
//

#import "AppDelegate.h"
#import <VULSDK/VULSDK.h>
#import "VULMainController.h"
#import "LoginRequest.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[VULMainController new]];
    [self.window makeKeyAndVisible];
    
    [[YTKNetworkAgent sharedAgent] setValue:[NSSet setWithObjects:@"application/json", @"text/plain", @"text/javascript", @"text/json",@"text/html", nil] forKeyPath:@"jsonResponseSerializer.acceptableContentTypes"];
    
    LoginRequest *request = [LoginRequest new];
    [request startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        NSLog(@"%@",request);
        NSLog(@"%@",request.responseObject);
        [VULManager registerToken:[[request.responseObject objectForKey:@"data"] objectForKey:@"accessToken"] baseUrl:@"https://test.1x.cn" userId:[[[request.responseObject objectForKey:@"data"] objectForKey:@"userId"] integerValue]];
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        NSLog(@"%@",request);
        NSLog(@"%@",request.responseString);
        NSLog(@"%@",request.error);
    }];

    return YES;
}




@end
