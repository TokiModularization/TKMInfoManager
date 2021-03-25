//
//  TKMDeviceInfoManager.m
//  TKMInfoManager
//
//  Created by Thief Toki on 2021/3/25.
//

#import "TKMDeviceInfoManager.h"

@implementation TKMDeviceInfoManager

#pragma mark - shared

+ (instancetype)shared {
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

#pragma mark - getter

- (NSString *)OSVersion {
    return @"14";
}

@end
