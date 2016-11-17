//
//	User.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "User.h"

NSString *const kUserApplyMail = @"applyMail";
NSString *const kUserCnName = @"cnName";
NSString *const kUserName = @"name";
NSString *const kUserRoleName = @"roleName";
NSString *const kUserTenantId = @"tenantId";
NSString *const kUserUserPass = @"userPass";
NSString *const kUserValid = @"valid";

@interface User ()
@end
@implementation User




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kUserApplyMail] isKindOfClass:[NSNull class]]){
		self.applyMail = dictionary[kUserApplyMail];
	}	
	if(![dictionary[kUserCnName] isKindOfClass:[NSNull class]]){
		self.cnName = dictionary[kUserCnName];
	}	
	if(![dictionary[kUserName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kUserName];
	}	
	if(![dictionary[kUserRoleName] isKindOfClass:[NSNull class]]){
		self.roleName = dictionary[kUserRoleName];
	}	
	if(![dictionary[kUserTenantId] isKindOfClass:[NSNull class]]){
		self.tenantId = dictionary[kUserTenantId];
	}	
	if(![dictionary[kUserUserPass] isKindOfClass:[NSNull class]]){
		self.userPass = dictionary[kUserUserPass];
	}	
	if(![dictionary[kUserValid] isKindOfClass:[NSNull class]]){
		self.valid = [dictionary[kUserValid] boolValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.applyMail != nil){
		dictionary[kUserApplyMail] = self.applyMail;
	}
	if(self.cnName != nil){
		dictionary[kUserCnName] = self.cnName;
	}
	if(self.name != nil){
		dictionary[kUserName] = self.name;
	}
	if(self.roleName != nil){
		dictionary[kUserRoleName] = self.roleName;
	}
	if(self.tenantId != nil){
		dictionary[kUserTenantId] = self.tenantId;
	}
	if(self.userPass != nil){
		dictionary[kUserUserPass] = self.userPass;
	}
	dictionary[kUserValid] = @(self.valid);
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
	if(self.applyMail != nil){
		[aCoder encodeObject:self.applyMail forKey:kUserApplyMail];
	}
	if(self.cnName != nil){
		[aCoder encodeObject:self.cnName forKey:kUserCnName];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kUserName];
	}
	if(self.roleName != nil){
		[aCoder encodeObject:self.roleName forKey:kUserRoleName];
	}
	if(self.tenantId != nil){
		[aCoder encodeObject:self.tenantId forKey:kUserTenantId];
	}
	if(self.userPass != nil){
		[aCoder encodeObject:self.userPass forKey:kUserUserPass];
	}
	[aCoder encodeObject:@(self.valid) forKey:kUserValid];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.applyMail = [aDecoder decodeObjectForKey:kUserApplyMail];
	self.cnName = [aDecoder decodeObjectForKey:kUserCnName];
	self.name = [aDecoder decodeObjectForKey:kUserName];
	self.roleName = [aDecoder decodeObjectForKey:kUserRoleName];
	self.tenantId = [aDecoder decodeObjectForKey:kUserTenantId];
	self.userPass = [aDecoder decodeObjectForKey:kUserUserPass];
	self.valid = [[aDecoder decodeObjectForKey:kUserValid] boolValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	User *copy = [User new];

	copy.applyMail = [self.applyMail copy];
	copy.cnName = [self.cnName copy];
	copy.name = [self.name copy];
	copy.roleName = [self.roleName copy];
	copy.tenantId = [self.tenantId copy];
	copy.userPass = [self.userPass copy];
	copy.valid = self.valid;

	return copy;
}
@end