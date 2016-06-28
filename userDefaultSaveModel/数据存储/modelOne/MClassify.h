//
//  MClassify.h
//  qzc
//
//  Created by ylgwhyh on 16/3/2.
//  Copyright © 2016年 xinggenji. All rights reserved.
//  企业分类模型

#import <Foundation/Foundation.h>

@interface MClassify : NSObject

@property (copy, nonatomic) NSString *id;
@property (copy, nonatomic) NSString *pid;
@property (copy, nonatomic) NSString *name;
@property (copy,   nonatomic) NSString *sort;
@property (strong, nonatomic) NSMutableArray<MClassify *> *son;

@end
