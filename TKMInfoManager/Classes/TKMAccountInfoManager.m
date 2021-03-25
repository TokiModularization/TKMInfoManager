//
//  TKMAccountInfoManager.m
//  TKMInfoManager
//
//  Created by Thief Toki on 2021/3/25.
//

#import "TKMAccountInfoManager.h"

#import "TKMRequest+Account.h"

@implementation TKMAccountInfoManager

#pragma mark - shared

+ (instancetype)shared {
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

#pragma mark - 

- (void)loginWithUserId:(NSString *)userId
               callback:(void(^)(NSDictionary *response, NSError *error))callback {
    [[TKMRequest shared] loginWithUserId:userId
                                callback:^(NSDictionary * _Nonnull response, NSError * _Nonnull error) {
        if (error) {
            NSLog(@"登录失败：%@", error);
            self.token = @"";
        } else {
            self.token = response[@"token"];
        }
        if(callback) callback(response, error);
    }];
}

@end
