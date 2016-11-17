//
//	Attribute.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Attribute.h"

NSString *const kAttributeDesc = @"desc";
NSString *const kAttributeKey = @"key";
NSString *const kAttributeOptions = @"options";
NSString *const kAttributeRequired = @"required";
NSString *const kAttributeType = @"type";

@interface Attribute ()
@end
@implementation Attribute




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kAttributeDesc] isKindOfClass:[NSNull class]]){
		self.desc = dictionary[kAttributeDesc];
	}	
	if(![dictionary[kAttributeKey] isKindOfClass:[NSNull class]]){
		self.key = dictionary[kAttributeKey];
	}	
	if(![dictionary[kAttributeOptions] isKindOfClass:[NSNull class]]){
		self.options = dictionary[kAttributeOptions];
	}	
	if(![dictionary[kAttributeRequired] isKindOfClass:[NSNull class]]){
		self.required = [dictionary[kAttributeRequired] boolValue];
	}

	if(![dictionary[kAttributeType] isKindOfClass:[NSNull class]]){
		self.type = dictionary[kAttributeType];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.desc != nil){
		dictionary[kAttributeDesc] = self.desc;
	}
	if(self.key != nil){
		dictionary[kAttributeKey] = self.key;
	}
	if(self.options != nil){
		dictionary[kAttributeOptions] = self.options;
	}
	dictionary[kAttributeRequired] = @(self.required);
	if(self.type != nil){
		dictionary[kAttributeType] = self.type;
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
	if(self.desc != nil){
		[aCoder encodeObject:self.desc forKey:kAttributeDesc];
	}
	if(self.key != nil){
		[aCoder encodeObject:self.key forKey:kAttributeKey];
	}
	if(self.options != nil){
		[aCoder encodeObject:self.options forKey:kAttributeOptions];
	}
	[aCoder encodeObject:@(self.required) forKey:kAttributeRequired];	if(self.type != nil){
		[aCoder encodeObject:self.type forKey:kAttributeType];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.desc = [aDecoder decodeObjectForKey:kAttributeDesc];
	self.key = [aDecoder decodeObjectForKey:kAttributeKey];
	self.options = [aDecoder decodeObjectForKey:kAttributeOptions];
	self.required = [[aDecoder decodeObjectForKey:kAttributeRequired] boolValue];
	self.type = [aDecoder decodeObjectForKey:kAttributeType];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Attribute *copy = [Attribute new];

	copy.desc = [self.desc copy];
	copy.key = [self.key copy];
	copy.options = [self.options copy];
	copy.required = self.required;
	copy.type = [self.type copy];

	return copy;
}
@end