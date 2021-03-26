//
//  TKMRequest+Recharge.m
//  TKMInfoManager
//
//  Created by Thief Toki on 2021/3/26.
//

#import "TKMRequest+Recharge.h"

#import "TKMAccountInfoManager.h"

@implementation TKMRequest (Recharge)

- (void)rechargeWithCallback:(void(^)(NSDictionary *response, NSError *error))callback {
    //模拟充值请求
    [self requestPath:@"recharge"
           parameters:@{ }
             callback:^(NSDictionary * _Nonnull response, NSError * _Nonnull error) {
        if ([TKMAccountInfoManager shared].token.length > 0) {
            if (callback) callback(@{@"money": @"100"}, nil);
        } else {
            if (callback) callback(@{}, [NSError errorWithDomain:@"token错误"
                                                            code:10001
                                                        userInfo:nil]);
        }
    }];
}

@end
