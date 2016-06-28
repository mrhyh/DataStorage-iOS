//
//  MJViewController.m
//  06-NSCoding
//
//  Created by apple on 14-4-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MJViewController.h"
#import "MJStudent.h"

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
    // 1.新的模型对象
    MJStudent *stu = [[MJStudent alloc] init];
    stu.no = @"42343254";
    stu.age = 20;
    stu.height = 1.55;
    
    // 2.归档模型对象
    // 2.1.获得Documents的全路径
    NSString *doc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    // 2.2.获得文件的全路径
    NSString *path = [doc stringByAppendingPathComponent:@"stu.data"];
    // 2.3.将对象归档
    [NSKeyedArchiver archiveRootObject:stu toFile:path];
}

- (IBAction)read {
    // 1.获得Documents的全路径
    NSString *doc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    // 2.获得文件的全路径
    NSString *path = [doc stringByAppendingPathComponent:@"stu.data"];
    
    // 3.从文件中读取MJStudent对象
    MJStudent *stu = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    
    NSLog(@"%@ %d %f", stu.no, stu.age, stu.height);
}
@end
