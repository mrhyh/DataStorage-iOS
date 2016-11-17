//
//	LoginModel.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LoginModel.h"

NSString *const kLoginModelIsLogin = @"isLogin";
NSString *const kLoginModelToken = @"token";
NSString *const kLoginModelUser = @"user";

@interface LoginModel ()
@end
@implementation LoginModel




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
    if(![dictionary[kLoginModelToken] isKindOfClass:[NSNull class]]){
        self.isLogin = dictionary[kLoginModelIsLogin];
    }
	if(![dictionary[kLoginModelToken] isKindOfClass:[NSNull class]]){
		self.token = dictionary[kLoginModelToken];
	}	
	if(![dictionary[kLoginModelUser] isKindOfClass:[NSNull class]]){
		self.user = [[User alloc] initWithDictionary:dictionary[kLoginModelUser]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    NSString *isLoginString = [NSString stringWithFormat:@"%@",self.isLogin];
    if(isLoginString != nil){
        dictionary[kLoginModelIsLogin] = isLoginString;
    }
	if(self.token != nil){
		dictionary[kLoginModelToken] = self.token;
	}
	if(self.user != nil){
		dictionary[kLoginModelUser] = [self.user toDictionary];
	}
	return dictionary;

}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    if(self.isLogin != nil){
        [aCoder encodeObject:self.token forKey:kLoginModelIsLogin];
    }
	if(self.token != nil){
		[aCoder encodeObject:self.token forKey:kLoginModelToken];
	}
	if(self.user != nil){
		[aCoder encodeObject:self.user forKey:kLoginModelUser];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
    self.isLogin = [aDecoder decodeObjectForKey:kLoginModelIsLogin];
	self.token = [aDecoder decodeObjectForKey:kLoginModelToken];
	self.user = [aDecoder decodeObjectForKey:kLoginModelUser];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	LoginModel *copy = [LoginModel new];

	copy.token = [self.token copy];
	copy.user = [self.user copy];

	return copy;
}
@end
