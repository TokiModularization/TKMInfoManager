//
//  TKMEnvironmentInfoManager.m
//  TKMInfoManager
//
//  Created by Thief Toki on 2021/3/25.
//

#import "TKMEnvironmentInfoManager.h"

@implementation TKMEnvironmentInfoManager

#pragma mark - shared

+ (instancetype)shared {
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

#pragma mark -

- (void)registerWithEnvironmentType:(TKMEnvironmentType)environmentType {
    self.environmentType = environmentType;
    switch (self.environmentType) {
        case TKMEnvironmentTypeDevelop:
            self.baseURL = @"http://localhost:8080/";
            break;
        case TKMEnvironmentTypeTest:
            self.baseURL = @"http://localhost:8081/";
            break;
        case TKMEnvironmentTypeRelease:
            self.baseURL = @"http://localhost:8082/";
            break;
    }
}

@end
