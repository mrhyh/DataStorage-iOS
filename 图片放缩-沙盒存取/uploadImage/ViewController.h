//
//  ViewController.h
//  uploadImage
//
//  Created by 张琼芳 on 13-5-30.
//  Copyright (c) 2013年 joanfen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIActionSheetDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>


- (IBAction)chooseImage:(id)sender;

@property (retain, nonatomic) IBOutlet UIImageView *imageView;

@end
