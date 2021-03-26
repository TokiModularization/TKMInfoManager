//
//  TKMRechargeManager.h
//  TKMInfoManager
//
//  Created by Thief Toki on 2021/3/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TKMRechargeManager : NSObject

+ (instancetype)shared;

- (void)rechargeWithCallback:(void(^)(NSDictionary *response, NSError *error))callback;

@end

NS_ASSUME_NONNULL_END
