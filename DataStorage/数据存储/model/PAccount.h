//
//  PAccount.h
//  qzc
//
//  Created by jxm apple on 16/3/4.
//  Copyright © 2016年 xinggenji. All rights reserved.
//

#import "Account.h"
#import <Foundation/Foundation.h>

@interface PAccount : Account


@property (nonatomic, copy) NSString *nearVisible;
@property (nonatomic, copy) NSString *sex;
@property (nonatomic, copy) NSString *star;
@property (nonatomic, copy) NSString *birthday;
@property (nonatomic, copy) NSString *affective;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *countryId;
@property (nonatomic, copy) NSString *provinceId;
@property (nonatomic, copy) NSString *cityId;
@property (nonatomic, copy) NSString *areaId;
@property (nonatomic, copy) NSString *cityName;
@property (nonatomic, copy) NSString *provinceName;
@property (nonatomic, copy) NSString *activeTime;

@end
