//
//  MJStudent.h
//  06-NSCoding
//
//  Created by apple on 14-4-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MJStudent : NSObject  <NSCoding>
@property (nonatomic, copy) NSString *no;
@property (nonatomic, assign) double height;
@property (nonatomic, assign) int age;
@end
