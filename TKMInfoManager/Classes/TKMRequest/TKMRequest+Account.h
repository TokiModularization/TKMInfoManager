//
//  TKMRequest+Account.h
//  TKMInfoManager
//
//  Created by Thief Toki on 2021/3/25.
//

#import "TKMRequest.h"

NS_ASSUME_NONNULL_BEGIN

@interface TKMRequest (Account)

- (void)loginWithUserId:(NSString *)userId
               callback:(void(^)(NSDictionary *response, NSError *error))callback;

@end

NS_ASSUME_NONNULL_END
