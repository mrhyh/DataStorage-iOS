//
//  MJStudent.m
//  06-NSCoding
//
//  Created by apple on 14-4-10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MJStudent.h"

@interface MJStudent() 

@end

@implementation MJStudent

/**
 *  将某个对象写入文件时会调用
 *  在这个方法中说清楚哪些属性需要存储
 */
- (void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:self.no forKey:@"no"];
    [encoder encodeInt:self.age forKey:@"age"];
    [encoder encodeDouble:self.height forKey:@"height"];
}

/**
 *  从文件中解析对象时会调用
 *  在这个方法中说清楚哪些属性需要存储
 */
- (id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init]) {
        // 读取文件的内容
        self.no = [decoder decodeObjectForKey:@"no"];
        self.age = [decoder decodeIntForKey:@"age"];
        self.height = [decoder decodeDoubleForKey:@"height"];
    }
    return self;
}
@end
