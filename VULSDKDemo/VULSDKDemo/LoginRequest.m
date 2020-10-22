//
//  LoginRequest.m
//  VULSDK_Demo
//
//  Created by yuekewei on 2020/9/17.
//  Copyright © 2020 svnlan. All rights reserved.
//

#import "LoginRequest.h"
#import <CommonCrypto/CommonCryptor.h>
#import <CommonCrypto/CommonDigest.h>

@implementation LoginRequest

#pragma mark - 重写
- (NSString *)baseUrl {
    return @"https://test.1x.cn";
}

- (NSString *)requestUrl {
    return @"/api/user/simulator/login";
}

- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodGET;
}

- (id)requestArgument {
    return @{
        @"loginName" : @"ykw102"
    };
}

- (YTKRequestSerializerType)requestSerializerType {
    return YTKRequestSerializerTypeJSON;
}

@end
