//
//  TKMEnvironmentInfoManager.h
//  TKMInfoManager
//
//  Created by Thief Toki on 2021/3/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, TKMEnvironmentType) {
    TKMEnvironmentTypeDevelop,
    TKMEnvironmentTypeTest,
    TKMEnvironmentTypeRelease,
};

@interface TKMEnvironmentInfoManager : NSObject

@property (nonatomic, assign) TKMEnvironmentType environmentType;
@property (nonatomic, strong) NSString *baseURL;

+ (instancetype)shared;

- (void)registerWithEnvironmentType:(TKMEnvironmentType)environmentType;

@end

NS_ASSUME_NONNULL_END
