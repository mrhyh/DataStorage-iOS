//
//	EDITED.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "EDITED.h"

NSString *const kEDITEDAccessKeyId = @"accessKeyId";
NSString *const kEDITEDAccessKeySecret = @"accessKeySecret";
NSString *const kEDITEDBucketName = @"bucketName";
NSString *const kEDITEDEndpoint = @"endpoint";
NSString *const kEDITEDObjectFolder = @"objectFolder";
NSString *const kEDITEDObjectKeyPrefix = @"objectKeyPrefix";

@interface EDITED ()
@end
@implementation EDITED




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kEDITEDAccessKeyId] isKindOfClass:[NSNull class]]){
		self.accessKeyId = dictionary[kEDITEDAccessKeyId];
	}	
	if(![dictionary[kEDITEDAccessKeySecret] isKindOfClass:[NSNull class]]){
		self.accessKeySecret = dictionary[kEDITEDAccessKeySecret];
	}	
	if(![dictionary[kEDITEDBucketName] isKindOfClass:[NSNull class]]){
		self.bucketName = dictionary[kEDITEDBucketName];
	}	
	if(![dictionary[kEDITEDEndpoint] isKindOfClass:[NSNull class]]){
		self.endpoint = dictionary[kEDITEDEndpoint];
	}	
	if(![dictionary[kEDITEDObjectFolder] isKindOfClass:[NSNull class]]){
		self.objectFolder = dictionary[kEDITEDObjectFolder];
	}	
	if(![dictionary[kEDITEDObjectKeyPrefix] isKindOfClass:[NSNull class]]){
		self.objectKeyPrefix = dictionary[kEDITEDObjectKeyPrefix];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.accessKeyId != nil){
		dictionary[kEDITEDAccessKeyId] = self.accessKeyId;
	}
	if(self.accessKeySecret != nil){
		dictionary[kEDITEDAccessKeySecret] = self.accessKeySecret;
	}
	if(self.bucketName != nil){
		dictionary[kEDITEDBucketName] = self.bucketName;
	}
	if(self.endpoint != nil){
		dictionary[kEDITEDEndpoint] = self.endpoint;
	}
	if(self.objectFolder != nil){
		dictionary[kEDITEDObjectFolder] = self.objectFolder;
	}
	if(self.objectKeyPrefix != nil){
		dictionary[kEDITEDObjectKeyPrefix] = self.objectKeyPrefix;
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
	if(self.accessKeyId != nil){
		[aCoder encodeObject:self.accessKeyId forKey:kEDITEDAccessKeyId];
	}
	if(self.accessKeySecret != nil){
		[aCoder encodeObject:self.accessKeySecret forKey:kEDITEDAccessKeySecret];
	}
	if(self.bucketName != nil){
		[aCoder encodeObject:self.bucketName forKey:kEDITEDBucketName];
	}
	if(self.endpoint != nil){
		[aCoder encodeObject:self.endpoint forKey:kEDITEDEndpoint];
	}
	if(self.objectFolder != nil){
		[aCoder encodeObject:self.objectFolder forKey:kEDITEDObjectFolder];
	}
	if(self.objectKeyPrefix != nil){
		[aCoder encodeObject:self.objectKeyPrefix forKey:kEDITEDObjectKeyPrefix];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.accessKeyId = [aDecoder decodeObjectForKey:kEDITEDAccessKeyId];
	self.accessKeySecret = [aDecoder decodeObjectForKey:kEDITEDAccessKeySecret];
	self.bucketName = [aDecoder decodeObjectForKey:kEDITEDBucketName];
	self.endpoint = [aDecoder decodeObjectForKey:kEDITEDEndpoint];
	self.objectFolder = [aDecoder decodeObjectForKey:kEDITEDObjectFolder];
	self.objectKeyPrefix = [aDecoder decodeObjectForKey:kEDITEDObjectKeyPrefix];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	EDITED *copy = [EDITED new];

	copy.accessKeyId = [self.accessKeyId copy];
	copy.accessKeySecret = [self.accessKeySecret copy];
	copy.bucketName = [self.bucketName copy];
	copy.endpoint = [self.endpoint copy];
	copy.objectFolder = [self.objectFolder copy];
	copy.objectKeyPrefix = [self.objectKeyPrefix copy];

	return copy;
}
@end