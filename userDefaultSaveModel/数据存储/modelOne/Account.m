//
//  Account.m
//  qzc
//
//  Created by jxm apple on 16/2/3.
//  Copyright © 2016年 xinggenji. All rights reserved.
//

#import "Account.h"

@implementation Account


+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{@"Id":@"id"};
}

- (void)encodeWithCoder:(NSCoder *)aCoder{

    [aCoder encodeObject:self.acc forKey:@"acc"];
    [aCoder encodeObject:self.accId forKey:@"accId"];
    [aCoder encodeObject:self.accToken forKey:@"accToken"];
    [aCoder encodeObject:self.crtime forKey:@"crtime"];
    [aCoder encodeObject:self.Id forKey:@"id"];
    [aCoder encodeObject:self.lastLogin forKey:@"lastLogin"];
    [aCoder encodeObject:self.lat forKey:@"lat"];
    [aCoder encodeObject:self.lng forKey:@"lng"];
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.noDisturb forKey:@"noDisturb"];
    [aCoder encodeObject:self.remark forKey:@"remark"];
    [aCoder encodeObject:self.signer forKey:@"signer"];
    [aCoder encodeObject:self.status forKey:@"status"];
    [aCoder encodeObject:self.token forKey:@"token"];
    [aCoder encodeObject:self.type forKey:@"type"];
    [aCoder encodeObject:self.uid forKey:@"uid"];
    
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if(self = [super init]){
        self.acc = [aDecoder decodeObjectForKey:@"acc"];
        self.accId = [aDecoder decodeObjectForKey:@"accId"];
        self.accToken = [aDecoder decodeObjectForKey:@"accToken"];
        self.crtime = [aDecoder decodeObjectForKey:@"crtime"];
        self.Id = [aDecoder decodeObjectForKey:@"id"];
        self.lastLogin = [aDecoder decodeObjectForKey:@"lastLogin"];
        self.lat = [aDecoder decodeObjectForKey:@"lat"];
        self.lng = [aDecoder decodeObjectForKey:@"lng"];
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.noDisturb = [aDecoder decodeObjectForKey:@"noDisturb"];
        self.remark = [aDecoder decodeObjectForKey:@"remark"];
        self.signer = [aDecoder decodeObjectForKey:@"signer"];
        self.status = [aDecoder decodeObjectForKey:@"status"];
        self.token = [aDecoder decodeObjectForKey:@"token"];
        self.type = [aDecoder decodeObjectForKey:@"type"];
        self.uid = [aDecoder decodeObjectForKey:@"uid"];
    }
    return self;
}



@end
