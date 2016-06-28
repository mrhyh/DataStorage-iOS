//
//  MBase.h
//  qzc
//
//  Created by ylgwhyh on 16/3/2.
//  Copyright © 2016年 xinggenji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MClassify.h"

@interface MBase : NSObject

@property (assign, nonatomic) NSInteger code;
@property (copy,   nonatomic) NSDictionary *info;

@property (copy,   nonatomic) MClassify *mclassify;


@end
