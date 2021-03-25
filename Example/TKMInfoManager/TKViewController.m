//
//  TKViewController.m
//  TKMInfoManager
//
//  Created by zhengxianda0512@gmail.com on 03/25/2021.
//  Copyright (c) 2021 zhengxianda0512@gmail.com. All rights reserved.
//

#import "TKViewController.h"

#import <TKMRequest/TKMRequest.h>
#import <TKMInfoManager/TKMInfoManager.h>

@interface TKViewController ()

@end

@implementation TKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[TKMEnvironmentInfoManager shared] registerWithEnvironmentType:TKMEnvironmentTypeDevelop];
    
    [[TKMRequest shared] registerBaseURL:[TKMEnvironmentInfoManager shared].baseURL
                          baseHeaderHook:^NSDictionary * _Nonnull{
        return @{
            @"osversion": [TKMDeviceInfoManager shared].OSVersion?:@""
        };
    } baseParamHook:^NSDictionary * _Nonnull{
        return @{
            @"token": [TKMAccountInfoManager shared].token?:@""
        };
    }];
    
    [[TKMAccountInfoManager shared] loginWithUserId:@"999"
                                           callback:^(NSDictionary * _Nonnull response, NSError * _Nonnull error) {
        if (error) {
            NSLog(@"%@", error);
        } else {
            NSLog(@"%@", response);
        }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
