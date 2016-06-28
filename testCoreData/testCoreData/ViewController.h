//
//  ViewController.h
//  testCoreData
//
//  Created by ylgwhyh on 15/12/28.
//  Copyright © 2015年 com.hyh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)saveItem:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *line1;

@property (weak, nonatomic) IBOutlet UITextField *line2;
@property (weak, nonatomic) IBOutlet UITextField *line3;
@property (weak, nonatomic) IBOutlet UITextField *line4;

@end

