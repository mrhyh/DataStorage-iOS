//
//  KAccount.h
//  qzc
//
//  Created by jxm apple on 16/3/4.
//  Copyright © 2016年 xinggenji. All rights reserved.
//

#import "Account.h"

@interface KAccount : Account

@property (nonatomic, copy) NSString *companyUid;
@property (nonatomic, copy) NSString *dept;
@property (nonatomic, copy) NSString *job;
@property (nonatomic, copy) NSString *restStatus;
@property (nonatomic, copy) NSString *taskStatus;
@property (nonatomic, copy) NSString *taskTime;

@end
