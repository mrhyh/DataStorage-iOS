//
//  CAccount.m
//  qzc
//
//  Created by jxm apple on 16/3/4.
//  Copyright © 2016年 xinggenji. All rights reserved.
//

#import "CAccount.h"

@implementation CAccount

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [super encodeWithCoder:aCoder];
    
    [aCoder encodeObject:self.areaId forKey:@"areaId"];
    [aCoder encodeObject:self.activeTime forKey:@"activeTime"];
    [aCoder encodeObject:self.address forKey:@"address"];
    [aCoder encodeObject:self.affective forKey:@"affective"];
    [aCoder encodeObject:self.birthday forKey:@"birthday"];
    [aCoder encodeObject:self.cityId forKey:@"cityId"];
    [aCoder encodeObject:self.cityName forKey:@"cityName"];
    [aCoder encodeObject:self.countryId forKey:@"countryId"];
    [aCoder encodeObject:self.provinceId forKey:@"provinceId"];
    [aCoder encodeObject:self.provinceName forKey:@"provinceName"];
    [aCoder encodeObject:self.sex forKey:@"sex"];
    [aCoder encodeObject:self.star forKey:@"star"];
    [aCoder encodeObject:self.categoryAttrIds forKey:@"categoryAttrIds"];
    [aCoder encodeObject:self.categoryIds forKey:@"categoryIds"];
    [aCoder encodeObject:self.categoryNames forKey:@"categoryNames"];
    [aCoder encodeObject:self.companyOwner forKey:@"companyOwner"];
    [aCoder encodeObject:self.companyType forKey:@"companyType"];
    [aCoder encodeObject:self.deputy forKey:@"deputy"];
    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder encodeObject:self.fax forKey:@"fax"];
    [aCoder encodeObject:self.intro forKey:@"intro"];
    [aCoder encodeObject:self.licenceNum forKey:@"licenceNum"];
    [aCoder encodeObject:self.mainBusiness forKey:@"mainBusiness"];
    [aCoder encodeObject:self.pic forKey:@"pic"];
    [aCoder encodeObject:self.tel forKey:@"tel"];
    [aCoder encodeObject:self.regCapital forKey:@"regCapital"];
    [aCoder encodeObject:self.picompanyTypec forKey:@"picompanyTypec"];
    [aCoder encodeObject:self.workDays forKey:@"workDays"];
    [aCoder encodeObject:self.workTime forKey:@"workTime"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
    
    if(self = [super initWithCoder:aDecoder]){
        self.areaId = [aDecoder decodeObjectForKey:@"areaId"];
        self.activeTime = [aDecoder decodeObjectForKey:@"activeTime"];
        self.address = [aDecoder decodeObjectForKey:@"address"];
        self.affective = [aDecoder decodeObjectForKey:@"affective"];
        self.birthday = [aDecoder decodeObjectForKey:@"birthday"];
        self.cityId = [aDecoder decodeObjectForKey:@"cityId"];
        self.cityName = [aDecoder decodeObjectForKey:@"cityName"];
        self.countryId = [aDecoder decodeObjectForKey:@"countryId"];
        self.provinceId = [aDecoder decodeObjectForKey:@"provinceId"];
        self.provinceName = [aDecoder decodeObjectForKey:@"provinceName"];
        self.sex = [aDecoder decodeObjectForKey:@"sex"];
        self.star = [aDecoder decodeObjectForKey:@"star"];
        self.categoryAttrIds = [aDecoder decodeObjectForKey:@"categoryAttrIds"];
        self.categoryIds = [aDecoder decodeObjectForKey:@"categoryIds"];
        self.categoryNames = [aDecoder decodeObjectForKey:@"categoryNames"];
        self.companyOwner = [aDecoder decodeObjectForKey:@"companyOwner"];
        self.companyType = [aDecoder decodeObjectForKey:@"companyType"];
        self.deputy = [aDecoder decodeObjectForKey:@"deputy"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.fax = [aDecoder decodeObjectForKey:@"fax"];
        self.intro = [aDecoder decodeObjectForKey:@"intro"];
        self.licenceNum = [aDecoder decodeObjectForKey:@"licenceNum"];
        self.mainBusiness = [aDecoder decodeObjectForKey:@"mainBusiness"];
        self.pic = [aDecoder decodeObjectForKey:@"pic"];
        self.tel = [aDecoder decodeObjectForKey:@"tel"];
        self.regCapital = [aDecoder decodeObjectForKey:@"regCapital"];
        self.picompanyTypec = [aDecoder decodeObjectForKey:@"picompanyTypec"];
        self.workDays = [aDecoder decodeObjectForKey:@"workDays"];
        self.workTime = [aDecoder decodeObjectForKey:@"workTime"];
        }
    return self;
}

@end
