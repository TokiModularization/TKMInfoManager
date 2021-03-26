//
//  TKMRechargeManager.m
//  TKMInfoManager
//
//  Created by Thief Toki on 2021/3/26.
//

#import "TKMRechargeManager.h"

#import "TKMRequest+Recharge.h"

@implementation TKMRechargeManager

#pragma mark - shared

+ (instancetype)shared {
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (void)rechargeWithCallback:(void(^)(NSDictionary *response, NSError *error))callback {
    [[TKMRequest shared] rechargeWithCallback:callback];
}

@end
