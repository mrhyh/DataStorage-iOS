//
//  YHSLAccountManager.m
//  YHSL
//
//  Created by ylgwhyh on 16/11/11.
//  Copyright © 2016年 MH. All rights reserved.
//

#import "YHSLAccountManager.h"

static YHSLAccountManager *accountManager = nil;

@implementation YHSLAccountManager

- (void)setLoginModel:(LoginModel *)loginModel {
    _loginModel = loginModel;
}

+(YHSLAccountManager*)shareAccount{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        accountManager = [[YHSLAccountManager alloc] init];
        accountManager.loginModel = [self ReadLoginModel];
    });
    
    if ( nil == accountManager.loginModel ) {
        accountManager.loginModel =  [self ReadLoginModel];
    }
    
    return accountManager;
}


+(void)SaveLoginModel:(LoginModel *)loginModel {
    NSMutableArray *dataArray =[[NSMutableArray alloc] init];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:loginModel];
    [dataArray addObject:data];
    
    NSArray *arraySave = [NSArray arrayWithArray:dataArray];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:arraySave forKey:MFYHSLUserdefaultKeySaveLoginModel];
    [userDefaults synchronize];
}

+(LoginModel *)ReadLoginModel {
    //从本地读取账户模型
    NSUserDefaults *userDefaultsRead = [NSUserDefaults standardUserDefaults];
    NSArray *arrayRead = [userDefaultsRead arrayForKey:MFYHSLUserdefaultKeySaveLoginModel];
    //转换DSData数据
    LoginModel *model;
    for (NSData *data in arrayRead) {
        model = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    }
    return model;
}


@end
