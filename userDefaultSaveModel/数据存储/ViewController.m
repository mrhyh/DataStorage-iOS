//
//  ViewController.m
//  数据存储
//
//  Created by ln on 15/11/2.
//  Copyright © 2015年 ln. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Teacher.h"
#import "DataHandle.h"
#import "UpdataInfo.h"
#import "Person.h"
#import "Teacher.h"
#import "Account.h"
#import "PAccount.h"
#import "AccountManager.h"
#import "BasicConfigModel.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *listTableView;
@property (nonatomic, strong) NSMutableArray *resourceData;

@end

@implementation ViewController


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSMutableArray *)resourceData{
    
    if (!_resourceData) {
        _resourceData = [NSMutableArray array];
    }
    return _resourceData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self saveWithArchive];  //归档保存数组
    
    [self showSavepAccountModelWithUserDefaults];
    [self showSaveModelWithUserDefaults];
 
//    [self handelData];
    
    [self initListTableView];

}


#pragma mark 数据处理
-(void)handelData{
    /**
     NSUserDefaults的使用
     */
        Teacher *teacher1 = [[Teacher alloc]init];
        teacher1.t_name = @"张帮群";
        teacher1.t_teacher_age = @"45";
        teacher1.t_subject = @"语文";
    
    
        Teacher *teacher2 = [[Teacher alloc]init];
        teacher2.t_name = @"李英飞";
        teacher2.t_teacher_age = @"15";
        teacher2.t_subject = @"英语";
    
        Teacher *teacher3 = [[Teacher alloc]init];
        teacher3.t_name = @"林鹏飞";
        teacher3.t_teacher_age = @"32";
        teacher3.t_subject = @"数学";
    
        Teacher *teacher4 = [[Teacher alloc]init];
        teacher4.t_name = @"张朝阳";
        teacher4.t_teacher_age = @"5";
        teacher4.t_subject = @"科学";
    
        Teacher *teacher5 = [[Teacher alloc]init];
        teacher5.t_name = @"苏文萍";
        teacher5.t_teacher_age = @"22";
        teacher5.t_subject = @"自然";
    
    
        Teacher *teacher6 = [[Teacher alloc]init];
        teacher6.t_name = @"欧阳文雅";
        teacher6.t_teacher_age = @"2";
        teacher6.t_subject = @"辅导员";
    
    
        NSArray *personArray = @[teacher1,teacher2,teacher3,teacher4,teacher5,teacher6];
    
        [[DataHandle shareHandleData] storeObject:personArray forKey:@"数据处理"];
    
        NSArray *arrayR = [[DataHandle shareHandleData]valueWithKey:@"数据处理"];
    
        NSLog(@"返回的数组 ====== %@",arrayR);
    
    
    
        //存储数据到字典
        [[DataHandle shareHandleData]storeObjectToPlist:personArray forFileName:@"handle.plist"];
        //从字典获取数据
        NSArray *arr = [[DataHandle shareHandleData]getDataAccordingToFileName:@"handle.plist"];
    
        _resourceData = [NSMutableArray arrayWithArray:arr];
        /**
         *  plist文件的使用
         *
         */
        NSString *filePath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]stringByAppendingPathComponent:@"data.plist"];
        NSArray *array = @[@"逗逼二人组",@"黄蓉妹妹",@"靖哥哥"];
        [array writeToFile:filePath atomically:YES];
        
        NSArray *returnArray = [NSArray arrayWithContentsOfFile:filePath];
        NSLog(@"返回的数据== %@",returnArray);
}
-(void)initListTableView{
    
    _listTableView = [[UITableView alloc]initWithFrame:self.view.frame];
    _listTableView.delegate = self;
    _listTableView.dataSource = self;
    [self.view addSubview:_listTableView];
}

#pragma mark UITableView

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
   static NSString *idCell = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:idCell];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:idCell];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    cell.textLabel.text = @"保存模型到userdefault";
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];


    
}

#pragma mark 各种数据保存方法

//归档数组
- (void)saveWithArchive {
    /**
     归档NSKeyedArchiver
     */
    Person *p = [[Person alloc]init];
    p.name = @"我是一个对象";
    p.age = @"这个对象今年18岁";
    
    Person *ppp = [[Person alloc]init];
    ppp.name = @"一个对象";
    ppp.age = @"这个对象今年20岁";
    NSArray *pArr = @[p,ppp,p];
    
    NSString *ppath = [NSTemporaryDirectory() stringByAppendingPathComponent:@"person.txt"];
    NSLog(@"文件路径 --- %@",ppath);
    
    //归档数据
    [NSKeyedArchiver archiveRootObject:pArr toFile:ppath];
    NSArray *a = [NSKeyedUnarchiver unarchiveObjectWithFile:ppath];
    NSLog(@"a 数组是 %@",a);
    
    NSString *path = [NSTemporaryDirectory() stringByAppendingPathComponent:@"person.data"];
    [NSKeyedArchiver archiveRootObject:p toFile:path];
    NSLog(@"文件地址----%@",path);
}



- (void)TestModelThree {
    BasicConfigModel *model = [[BasicConfigModel alloc] init];
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
    
    
    //保存
   [AccountManager savePAccountWithArray:pAccountArray];
    //读取
    NSArray <PAccount *> *pAccountReadArray = [AccountManager readpAccounts];

}


@end
