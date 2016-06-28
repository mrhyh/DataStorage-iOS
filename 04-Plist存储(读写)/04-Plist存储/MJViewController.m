//
//  MJViewController.m
//  04-Plist存储
//
//  Created by apple on 14-4-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MJViewController.h"
#import "MJPerson.h"

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

- (IBAction)save {
    [self saveArray];
}

- (void)saveArray
{
    // 1.获得沙盒根路径
    NSString *home = NSHomeDirectory();
    
    // 2.document路径
    NSString *docPath = [home stringByAppendingPathComponent:@"Documents"];
    
    // 3.新建数据
    MJPerson *p = [[MJPerson alloc] init];
    p.name = @"rose";
    NSMutableArray *data = [NSMutableArray array];
    [data addObject:@"jack"];
//    @[@"jack", @10, @"ffdsf"];
    //[data addObject:p];  //plist 无法直接保存模型
    
    // 拚接一个文件名
    NSString *filepath = [docPath stringByAppendingPathComponent:@"data.plist"];
    
    
    [data writeToFile:filepath atomically:YES];
}

- (IBAction)read {
    // 1.获得沙盒根路径
    NSString *home = NSHomeDirectory();
    
    // 2.document路径
    NSString *docPath = [home stringByAppendingPathComponent:@"Documents"];
    
    // 3.文件路径
    NSString *filepath = [docPath stringByAppendingPathComponent:@"data.plist"];
    
    // 4.读取数据
    NSArray *data = [NSArray arrayWithContentsOfFile:filepath];
    NSLog(@"%@", data);
}
@end
