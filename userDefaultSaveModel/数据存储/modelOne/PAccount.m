//
//  PAccount.m
//  qzc
//
//  Created by jxm apple on 16/3/4.
//  Copyright © 2016年 xinggenji. All rights reserved.
//

#import "PAccount.h"

@implementation PAccount

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [super encodeWithCoder:aCoder];
    
    [aCoder encodeObject:self.nearVisible forKey:@"nearVisible"];
    [aCoder encodeObject:self.sex forKey:@"sex"];
    [aCoder encodeObject:self.star forKey:@"star"];
    [aCoder encodeObject:self.birthday forKey:@"birthday"];
    [aCoder encodeObject:self.affective forKey:@"affective"];
    [aCoder encodeObject:self.address forKey:@"address"];
    [aCoder encodeObject:self.countryId forKey:@"countryId"];
    [aCoder encodeObject:self.provinceId forKey:@"provinceId"];
    [aCoder encodeObject:self.cityId forKey:@"cityId"];
    [aCoder encodeObject:self.areaId forKey:@"areaId"];
    [aCoder encodeObject:self.cityName forKey:@"cityName"];
    [aCoder encodeObject:self.provinceName forKey:@"provinceName"];
    [aCoder encodeObject:self.activeTime forKey:@"activeTime"];
    
}

- (id)initWithCoder:(NSCoder *)aDecoder{
    
    if(self = [super initWithCoder:aDecoder]){
        
        self.nearVisible = [aDecoder decodeObjectForKey:@"nearVisible"];
        self.sex = [aDecoder decodeObjectForKey:@"sex"];
        self.star = [aDecoder decodeObjectForKey:@"star"];
        self.birthday = [aDecoder decodeObjectForKey:@"birthday"];
        self.affective = [aDecoder decodeObjectForKey:@"affective"];
        self.address = [aDecoder decodeObjectForKey:@"address"];
        self.countryId = [aDecoder decodeObjectForKey:@"countryId"];
        self.provinceId = [aDecoder decodeObjectForKey:@"provinceId"];
        self.cityId = [aDecoder decodeObjectForKey:@"cityId"];
        self.areaId = [aDecoder decodeObjectForKey:@"areaId"];
        self.cityName = [aDecoder decodeObjectForKey:@"cityName"];
        self.provinceName = [aDecoder decodeObjectForKey:@"provinceName"];
        self.activeTime = [aDecoder decodeObjectForKey:@"activeTime"];
    }
    return self;
}

@end
