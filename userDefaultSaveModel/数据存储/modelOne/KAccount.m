//
//  KAccount.m
//  qzc
//
//  Created by jxm apple on 16/3/4.
//  Copyright © 2016年 xinggenji. All rights reserved.
//

#import "KAccount.h"

@implementation KAccount


- (void)encodeWithCoder:(NSCoder *)aCoder{
    [super encodeWithCoder:aCoder];
    
    [aCoder encodeObject:self.companyUid forKey:@"companyUid"];
    [aCoder encodeObject:self.dept forKey:@"dept"];
    [aCoder encodeObject:self.job forKey:@"job"];
    [aCoder encodeObject:self.restStatus forKey:@"restStatus"];
    [aCoder encodeObject:self.taskStatus forKey:@"taskStatus"];
    [aCoder encodeObject:self.taskTime forKey:@"taskTime"];

}

- (id)initWithCoder:(NSCoder *)aDecoder{
    if(self = [super initWithCoder:aDecoder]){
        
    self.companyUid = [aDecoder decodeObjectForKey:@"companyUid"];
    self.dept = [aDecoder decodeObjectForKey:@"dept"];
    self.job = [aDecoder decodeObjectForKey:@"job"];
    self.restStatus = [aDecoder decodeObjectForKey:@"restStatus"];
    self.taskStatus = [aDecoder decodeObjectForKey:@"taskStatus"];
    self.taskTime = [aDecoder decodeObjectForKey:@"taskTime"];
        
    }
    return self;
}

@end
