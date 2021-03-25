//
//  TKMDeviceInfoManager.h
//  TKMInfoManager
//
//  Created by Thief Toki on 2021/3/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TKMDeviceInfoManager : NSObject

@property (nonatomic, strong) NSString *OSVersion;

+ (instancetype)shared;

@end

NS_ASSUME_NONNULL_END
