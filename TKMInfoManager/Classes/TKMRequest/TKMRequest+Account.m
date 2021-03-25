//
//  TKMRequest+Account.m
//  TKMInfoManager
//
//  Created by Thief Toki on 2021/3/25.
//

#import "TKMRequest+Account.h"

@implementation TKMRequest (Account)

- (void)loginWithUserId:(NSString *)userId
               callback:(void(^)(NSDictionary *response, NSError *error))callback {
    //模拟登录请求
    [self requestPath:@"login"
           parameters:@{ @"userId": userId }
             callback:^(NSDictionary * _Nonnull response, NSError * _Nonnull error) {
        if (userId.length > 0) {
            if (callback) callback(@{@"token": @"0123456789"}, nil);
        } else {
            if (callback) callback(@{}, [NSError errorWithDomain:@"用户名错误"
                                                            code:10001
                                                        userInfo:nil]);
        }
    }];
}

@end
