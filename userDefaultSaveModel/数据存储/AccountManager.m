//
//  AccountManager.m
//  qzc
//
//  Created by jxm apple on 16/2/3.
//  Copyright © 2016年 xinggenji. All rights reserved.
//

#import "AccountManager.h"

static AccountManager *accountManagerData = nil;

@implementation AccountManager

+(AccountManager*)shareAccount{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        accountManagerData = [[AccountManager alloc] init];
    });
    return accountManagerData;
}

- (void)savePAccount:(PAccount *)pAccount {
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:pAccount];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:data forKey:PAccount_UserDefault];
}

- (PAccount *)readPAccount {
    
    NSUserDefaults *userDefaultsRead = [NSUserDefaults standardUserDefaults];
    NSData *data = [userDefaultsRead objectForKey:PAccount_UserDefault];
    PAccount *model  = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    return model;
}

//将只有一层的模型保存到本地
- (void)setCurrentAccount:(Account *)currentAccount{

    NSMutableArray *dataArray =[[NSMutableArray alloc] init];
    //将数组或模型转为NSdata
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:currentAccount];
    [dataArray addObject:data];

    NSArray *arraySave = [NSArray arrayWithArray:dataArray];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:arraySave forKey:CurrentAccount];
}

- (Account *)currentAccount {
    //从本地读取账户模型
    NSUserDefaults *userDefaultsRead = [NSUserDefaults standardUserDefaults];
    NSArray *arrayRead = [userDefaultsRead arrayForKey:CurrentAccount];
    //转换DSData数据
    Account *account;
    for (NSData *data in arrayRead) {
        account = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    }
    return account;
}

//保存模型数组
- (void)setCAccounts:(NSMutableArray<CAccount *> *)cAccounts{
    if ([cAccounts isKindOfClass:[NSMutableArray class]]){
        NSMutableArray *dataArray =[[NSMutableArray alloc] init];
        for(CAccount *cAc in cAccounts){
            NSData *data = [NSKeyedArchiver archivedDataWithRootObject:cAc];
            [dataArray addObject:data];
        }
        
        NSArray *arraySave = [NSArray arrayWithArray:dataArray];
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:arraySave forKey:CAccounts];
    }
}

- (CAccount *)cAccounts{
    //从本地读取账户模型
    NSUserDefaults *userDefaultsRead = [NSUserDefaults standardUserDefaults];
    NSArray *arrayRead = [userDefaultsRead arrayForKey:CAccounts];
    //转换DSData数据
    CAccount *cAccount;
    for (NSData *data in arrayRead) {
        cAccount = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    }
    return cAccount;
}

- (void)setKAccounts:(NSMutableArray<KAccount *> *)kAccounts{
    if ([kAccounts isKindOfClass:[NSMutableArray class]]){
        NSMutableArray *dataArray =[[NSMutableArray alloc] init];
        for(KAccount *kAc in kAccounts){
            NSData *data = [NSKeyedArchiver archivedDataWithRootObject:kAc];
            [dataArray addObject:data];
        }
        
        NSArray *arraySave = [NSArray arrayWithArray:dataArray];
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:arraySave forKey:KAccounts];
    }
}

- (KAccount *)kAccounts{
    //从本地读取账户模型
    NSUserDefaults *userDefaultsRead = [NSUserDefaults standardUserDefaults];
    NSArray *arrayRead = [userDefaultsRead arrayForKey:KAccounts];
    //转换DSData数据
    KAccount *kAccount;
    for (NSData *data in arrayRead) {
        kAccount = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    }
    return kAccount;
}



#pragma mark  保存模型数组

+ (void)savePAccountWithArray:(NSMutableArray<PAccount *> *)pAccounts {
    //是pAccount模型数组的处理方式
    if([pAccounts isKindOfClass:[NSMutableArray class]]){
        //保存账户模型数组到本地
        NSMutableArray *dataArray =[[NSMutableArray alloc] init];
        for(PAccount *pAc in pAccounts){
            NSData *data = [NSKeyedArchiver archivedDataWithRootObject:pAc];
            [dataArray addObject:data];
        }
        NSArray *arraySave = [NSArray arrayWithArray:dataArray];
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:arraySave forKey:PAccounts];
    }
}

#pragma mark 读取模型数组
+ (NSArray <PAccount *> *)readpAccounts {
    //从本地读取账户模型
    NSUserDefaults *userDefaultsRead = [NSUserDefaults standardUserDefaults];
    NSArray *arrayRead = [userDefaultsRead arrayForKey:PAccounts];
    //转换DSData数据
    PAccount *pAccount;
    NSMutableArray *pAccountArray = [NSMutableArray array];
    for (NSData *data in arrayRead) {
        pAccount = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        [pAccountArray addObject:pAccount];
    }
    
    return (NSArray *)pAccountArray;
}


@end
