//
//  YHSLAccountManager.h
//  YHSL
//
//  Created by ylgwhyh on 16/11/11.
//  Copyright © 2016年 MH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginModel.h"
#import "BasicConfigModel.h"

#define MFYHSLUserdefaultKeySaveLoginModel @"MFYHSLUserdefaultKeySaveLoginModel"
#define MFYHSLUserdefaultKeySaveBasicConfigModel @"MFYHSLUserdefaultKeySaveBasicConfigModel"

@interface YHSLAccountManager : NSObject

@property (nonatomic, strong) LoginModel *loginModel;

@property (nonatomic, strong) BasicConfigModel *basicConfigModel;

/**
 *  创建单例
 *
 *  @return 返回一个单例对象
 */
+(YHSLAccountManager*)shareAccount;

+(void)SaveLoginModel:(LoginModel *)loginModel;
+(LoginModel *)ReadLoginModel;

@end
