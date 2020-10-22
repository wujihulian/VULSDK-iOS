//
//  VULManager.h
//  VULSDK
//
//  Created by yuekewei on 2020/10/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VULManager : NSObject

@property (nonatomic, copy) NSString *token;

@property (nonatomic, assign) NSInteger userId;

@property (nonatomic, strong) NSString *baseUrl;

+ (instancetype)shareInstance;

+ (void)registerToken:(NSString *)token baseUrl:(NSString *)baseUrl userId:(NSInteger)userId;
@end

NS_ASSUME_NONNULL_END
