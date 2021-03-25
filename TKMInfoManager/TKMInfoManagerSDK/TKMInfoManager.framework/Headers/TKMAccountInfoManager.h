//
//  TKMAccountInfoManager.h
//  TKMInfoManager
//
//  Created by Thief Toki on 2021/3/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TKMAccountInfoManager : NSObject

@property (nonatomic, strong) NSString *token;

+ (instancetype)shared;

- (void)loginWithUserId:(NSString *)userId
               callback:(void(^)(NSDictionary *response, NSError *error))callback;

@end

NS_ASSUME_NONNULL_END
