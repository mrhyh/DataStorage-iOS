//
//  AccountManager.h
//  qzc
//
//  Created by jxm apple on 16/2/3.
//  Copyright © 2016年 xinggenji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAccount.h"
#import "CAccount.h"
#include "KAccount.h"

//账户保存本地数据键
#define CurrentAccount @"CurrentAccount"
#define PAccount_UserDefault @"PAccount_UserDefault"
#define PAccounts @"pAccounts"
#define CAccounts @"cAccounts"
#define KAccounts @"kAccounts"


@class CAccount;
@class KAccount;
@class Account;
@class PAccount;

@interface AccountManager : NSObject

//set、get方法中保存的下面的模型（模型数组保存方法）
@property (nonatomic,strong) NSMutableArray<PAccount*> * pAccounts;

@property (nonatomic,strong) Account *currentAccount;



/**
 *  创建单例
 *
 *  @return 返回一个单例对象
 */
+(AccountManager*)shareAccount;

//单个模型保存方法(类方法，通过类的实例对象调用),例如下面
//AccountManager *accountManager = [[AccountManager alloc] init];
//[accountManager readPAccount];

- (void)savePAccount:(PAccount *)pAccount;
- (PAccount *)readPAccount;

+ (void)savePAccountWithArray:(NSMutableArray<PAccount *> *)pAccounts;
+ (NSArray <PAccount *> *)readpAccounts;

@end
