//
//  Account.h
//  qzc
//
//  Created by jxm apple on 16/2/3.
//  Copyright © 2016年 xinggenji. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Account : NSObject

/**
 手机号
 */
@property (nonatomic, copy) NSString* mobile;
/**
 验证码
 */
@property (nonatomic, copy) NSString* codeMobile;
/**
 密码
 */
@property (nonatomic, copy) NSString* password;


@property (nonatomic, copy) NSString *acc;
@property (nonatomic, copy) NSString *accId;
@property (nonatomic, copy) NSString *accToken;
@property (nonatomic, copy) NSString *crtime;
@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *lastLogin;
@property (nonatomic, copy) NSString *lat; //
@property (nonatomic, copy) NSString *lng; //
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *noDisturb;//
@property (nonatomic, copy) NSString *remark;
@property (nonatomic, copy) NSString *signer;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *token;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *uid;



@end
