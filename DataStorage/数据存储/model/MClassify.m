//
//  MClassify.m
//  qzc
//
//  Created by ylgwhyh on 16/3/2.
//  Copyright © 2016年 xinggenji. All rights reserved.
//

#import "MClassify.h"


@implementation MClassify


/**
 *  数组中需要转换的模型类
 *
 *  @return 字典中的key是数组属性名，value是数组中存放模型的Class（Class类型或者NSString类型）
 */
+ (NSDictionary *)mj_objectClassInArray
{
    return @{
             @"son" : @"MClassify"
             };
}


@end
