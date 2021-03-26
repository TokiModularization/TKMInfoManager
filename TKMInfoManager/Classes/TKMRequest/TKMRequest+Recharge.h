//
//  TKMRequest+Recharge.h
//  TKMInfoManager
//
//  Created by Thief Toki on 2021/3/26.
//

#import "TKMRequest.h"

NS_ASSUME_NONNULL_BEGIN

@interface TKMRequest (Recharge)

- (void)rechargeWithCallback:(void(^)(NSDictionary *response, NSError *error))callback;

@end

NS_ASSUME_NONNULL_END
