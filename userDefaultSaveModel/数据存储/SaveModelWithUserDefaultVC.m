//
//  saveModelWithUserDefaultVC.m
//  数据存储
//
//  Created by ylgwhyh on 16/3/5.
//  Copyright © 2016年 ln. All rights reserved.
//

#import "SaveModelWithUserDefaultVC.h"
#import "Person.h"
#import "Teacher.h"

#import "Account.h"
#import "PAccount.h"
#import "AccountManager.h"

@interface SaveModelWithUserDefaultVC ()

@end

@implementation SaveModelWithUserDefaultVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化数据
    NSMutableArray *personsArray = [NSMutableArray array];
    NSArray *arrayWithString = [NSMutableArray array];
    Person *p1 = [[Person alloc] init];
    p1.name = @"p1";
    p1.age = @"";
    
    Person *pTwo = [[Person alloc] init];
    pTwo.name = @"p2";
    pTwo.age = nil;
    
    Teacher *Te1 = [[Teacher alloc] init];
    Te1.t_name = @"老师1";
    Te1.t_teacher_age = nil;
    Te1.t_subject = @"";
    
    [personsArray addObject:p1];
    [personsArray addObject:pTwo];
    
    arrayWithString = @[@" ",@" ", [NSNull null]]; //userdefault不能存这种格式的
    //arrayWithString = @[@"和", @"1",@"1", @"1"];
    
    //将数组或模型转为NSdata
    NSData *archiveData = [NSKeyedArchiver archivedDataWithRootObject:arrayWithString];
    
    //利用userDefault存储
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    //直接将模型利用userDefault存储不行
    //    [userDefaults setObject:p1 forKey:@"p1"];
    //    [userDefaults setObject:pTwo forKey:@"pTwo"];
    //    [userDefaults setObject:Te1 forKey:@"Te1"];
    
    //直接存储存有模型的数组也不行
    //    [userDefaults setObject:personsArray forKey:@"personArray"];
    
    //[userDefaults setObject:arrayWithString forKey:@"arrayWithString"];
    
    [userDefaults setObject:archiveData forKey:@"arrayWithString"];
    
    //从userDefault取数据
    //    NSArray *personArrayRead = [userDefaults arrayForKey:@"personArray"];
    //    for(Person *ps in personArrayRead){
    //        NSLog(@"Person.name=%@",ps.name);
    //        NSLog(@"Person.age=%@",ps.age);
    //    }
    
    //NSData *arrayWithStringReadData = [userDefaults dataForKey:@"arrayWithString"];
    //NSArray *arrayWithStringRead = [userDefaults dataForKey:@"arrayWithString"];
    
    //NSArray *arrayWithStringRead = [NSKeyedUnarchiver unarchiveObjectWithData:arrayWithStringReadData];
    
    
    
    [self showSaveModelWithUserDefaults];
    [self showSavepAccountModelWithUserDefaults];

    
    //addObjectsFromArray:userArrayC];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//演示保存模型到userDefaults
- (void)showSaveModelWithUserDefaults{
    //保存Account模型
    Account *account = [[Account alloc] init];
    account.acc = @"特使";
    account.accId = @"特使";
    account.accToken = @"特使";
    account.crtime = @"特使";
    
    //保存Account模型到本地
    [AccountManager shareAccount].currentAccount = account;
    
    //从本地读取Account
    Account *getCurrentAccount = [AccountManager shareAccount].currentAccount;
    NSLog(@"getCurrentAccount.acc%@",getCurrentAccount.acc);
}

//测试PAccount、CAccount、KAccount的保存和读取
- (void)showSavepAccountModelWithUserDefaults
{
    //保存PAccount模型
    PAccount *pAccount = [[PAccount alloc] init];
    pAccount.acc = @"父类";
    pAccount.nearVisible = @"测试";
    pAccount.sex = @"测试";
    pAccount.star = @"测试";
    NSArray *pAccountModelArray = [NSArray arrayWithObject:pAccount];
    NSMutableArray *pAccountArray = [[NSMutableArray alloc] init];
    [pAccountArray addObjectsFromArray:pAccountModelArray];
    
    [AccountManager shareAccount].pAccounts = pAccountArray;
    
    //从本地读取账户模型
    PAccount *testP = [AccountManager shareAccount].pAccounts;
    NSLog(@"testP%@",testP.acc);
    
    
    //保存CAccount模型
    CAccount *cAccount = [[CAccount alloc] init];
    cAccount.acc = @"父类";
    cAccount.areaId = @"测试";
    cAccount.sex = @"测试";
    cAccount.star = @"测试";
    NSArray *cAccountModelArray = [NSArray arrayWithObject:cAccount];
    NSMutableArray *cAccountArray = [[NSMutableArray alloc] init];
    [cAccountArray addObjectsFromArray:cAccountModelArray];
    
    [AccountManager shareAccount].cAccounts = cAccountArray;
    
    //从本地读取账户模型
    CAccount *testC = [AccountManager shareAccount].cAccounts;
    NSLog(@"testC%@",testC.acc);
    NSLog(@"testC%@",testC.star);
    
    
    //保存KAccount模型
    KAccount *kAccount = [[KAccount alloc] init];
    kAccount.acc = @"父类";
    kAccount.job = @"测试";
    NSArray *kAccountModelArray = [NSArray arrayWithObject:kAccount];
    NSMutableArray *kAccountArray = [[NSMutableArray alloc] init];
    [kAccountArray addObjectsFromArray:kAccountModelArray];
    
    [AccountManager shareAccount].kAccounts = kAccountArray;
    
    //从本地读取账户模型
    KAccount *testK = [AccountManager shareAccount].kAccounts;
    NSLog(@"testK%@",testK.acc);
    NSLog(@"testK%@",testK.job);

}

@end
