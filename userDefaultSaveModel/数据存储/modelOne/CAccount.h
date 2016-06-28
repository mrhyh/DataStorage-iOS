//
//  CAccount.h
//  qzc
//
//  Created by jxm apple on 16/3/4.
//  Copyright © 2016年 xinggenji. All rights reserved.
//

#import "Account.h"

@interface CAccount : Account<NSCoding>

@property (nonatomic, copy) NSString *areaId;
@property (nonatomic, copy) NSString *activeTime;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *affective;
@property (nonatomic, copy) NSString *birthday;
@property (nonatomic, copy) NSString *cityId;
@property (nonatomic, copy) NSString *cityName;
@property (nonatomic, copy) NSString *countryId;
@property (nonatomic, copy) NSString *provinceId;
@property (nonatomic, copy) NSString *provinceName;
@property (nonatomic, copy) NSString *sex;
@property (nonatomic, copy) NSString *star;
@property (nonatomic, copy) NSString *categoryAttrIds;
@property (nonatomic, copy) NSString *categoryIds;
@property (nonatomic, copy) NSString *categoryNames;
@property (nonatomic, copy) NSString *companyOwner;
@property (nonatomic, copy) NSString *companyType;
@property (nonatomic, copy) NSString *deputy;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *fax;
@property (nonatomic, copy) NSString *intro;
@property (nonatomic, copy) NSString *licenceNum;
@property (nonatomic, copy) NSString *mainBusiness;
@property (nonatomic, copy) NSString *pic;
@property (nonatomic, copy) NSString *tel;
@property (nonatomic, copy) NSString *regCapital;
@property (nonatomic, copy) NSString *picompanyTypec;
@property (nonatomic, copy) NSString *workDays;
@property (nonatomic, copy) NSString *workTime;
@property (nonatomic, copy) NSString *mobileVerifyCode;

@end
