//
//  ViewController.m
//  testCoreData
//
//  Created by ylgwhyh on 15/12/28.
//  Copyright © 2015年 com.hyh. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    //获取应用程序委托的引用，再用引用获取创建好的托管对象上下文。
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *context = [delegate managedObjectContext];
    
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Line"
                                                         inManagedObjectContext:context];;
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entityDescription];
    
    //由于希望检索持久库中所有Line对象，因此没有创建谓词。通过执行没有谓词的请求，上下文将返回库中的每一个Line对象
    
    NSError *error;
    
    NSArray *objects = [context executeFetchRequest:request error:&error];
    //确保返回的是有效数组，如果不是则记录它
    if (objects == nil)
    {
        NSLog(@"There was an error.");
    }
    
    //然后使用快速枚举遍历已检索托管对象的数组，从中提取LineNum和LineText值，并使用该信息更新用户界面上的文本字段之一
    for (NSManagedObject *oneObject in objects)
    {
        NSNumber *lineNum = [oneObject valueForKey:@"lineNum"];
        NSString *lineText = [oneObject valueForKey:@"lineText"];
        
        NSString *fieldNmae = [NSString stringWithFormat:@"line%d",[lineNum intValue]];
        UITextField *theField = [self valueForKey:fieldNmae];
        theField.text = lineText;
    }
    
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveItem:(id)sender {
    
    
    //获取应用程序委托的引用，再用引用获取创建好的托管对象上下文。
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *context = [delegate managedObjectContext];
    
    NSError *error;
    for (int i = 1; i <= 4; i++)
    {
        NSString *fieldName = [NSString stringWithFormat:@"line%d",i ];
        UITextField *theField = [self valueForKey:fieldName];
        
        //创建提取请求
        NSFetchRequest *request = [[NSFetchRequest alloc] init];
        
        //为已创建好的实体利用检索到的上下文创建一个实体描述
        NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Line"
                                                             inManagedObjectContext:context];
        //创建好了以后发送给提取请求，以便请求能够知道要查找的实体类型
        [request setEntity:entityDescription];
        
        //确定持久库中是否存在与此字段相对应的托管对象，所以穿件一个谓词来确定字段的正确对象：
        NSPredicate *pred = [NSPredicate predicateWithFormat:@"lineNum == %d",i ];
        [request setPredicate:pred];
        
        //由于我们还不知道是从持久库中加载托管对象还是创建新的托管对象，
        //所以声明一个指向NSManagedObject的指针并将他设置为nil
        NSManagedObject *theLine = nil;
        
        //再次在上下文中执行提取请求
        NSArray *objects = [context executeFetchRequest:request error:&error];
        
        if (objects == nil)
        {
            NSLog(@"There was an error!");
        }
        
        //检查示范返回了标准匹配的对象，若果有则加载它，如果没有则创建一个新的托管对象来保存此字段的文本
        if ([objects count] > 0)
        {
            theLine = [objects objectAtIndex:0];
        }
        else
        {
            theLine = [NSEntityDescription insertNewObjectForEntityForName:@"Line"
                                                    inManagedObjectContext:context];
        }
        
        //使用键值编码来设置行号以及托管对象的文本
        [theLine setValue:[NSNumber numberWithInt:i] forKey:@"lineNum"];
        [theLine setValue:theField.text forKey:@"lineText"];
        
    }
    //完成循环之后要通知上下文保存其更改
    [context save:&error];
}
@end
