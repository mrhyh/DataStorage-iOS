//
//  MJViewController.m
//  05-偏好设置
//
//  Created by apple on 14-4-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MJViewController.h"

@interface MJViewController ()
- (IBAction)save;
- (IBAction)read;
@end

@implementation MJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save {
    // 1.利用NSUserDefaults,就能直接访问软件的偏好设置(Library/Preferences)
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // 2.存储数据
    [defaults setObject:@"mj" forKey:@"account"];
    [defaults setObject:@"123" forKey:@"pwd"];
    [defaults setInteger:10 forKey:@"age"];
    [defaults setBool:YES forKey:@"auto_login"];
    
    // 3.立刻同步（将内存中的数据写入磁盘）
    [defaults synchronize];
}

- (IBAction)read {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *account = [defaults objectForKey:@"account"];
    BOOL autoLogin = [defaults boolForKey:@"auto_login"];
    NSLog(@"%@ -- %d", account, autoLogin);
}
@end
