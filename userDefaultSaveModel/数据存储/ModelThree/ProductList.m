//
//	ProductList.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "ProductList.h"

NSString *const kProductListAttributes = @"attributes";
NSString *const kProductListDesc = @"desc";
NSString *const kProductListIdField = @"id";
NSString *const kProductListName = @"name";

@interface ProductList ()
@end
@implementation ProductList




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(dictionary[kProductListAttributes] != nil && [dictionary[kProductListAttributes] isKindOfClass:[NSArray class]]){
		NSArray * attributesDictionaries = dictionary[kProductListAttributes];
		NSMutableArray * attributesItems = [NSMutableArray array];
		for(NSDictionary * attributesDictionary in attributesDictionaries){
			Attribute * attributesItem = [[Attribute alloc] initWithDictionary:attributesDictionary];
			[attributesItems addObject:attributesItem];
		}
		self.attributes = attributesItems;
	}
	if(![dictionary[kProductListDesc] isKindOfClass:[NSNull class]]){
		self.desc = dictionary[kProductListDesc];
	}	
	if(![dictionary[kProductListIdField] isKindOfClass:[NSNull class]]){
		self.idField = dictionary[kProductListIdField];
	}	
	if(![dictionary[kProductListName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kProductListName];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.attributes != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(Attribute * attributesElement in self.attributes){
			[dictionaryElements addObject:[attributesElement toDictionary]];
		}
		dictionary[kProductListAttributes] = dictionaryElements;
	}
	if(self.desc != nil){
		dictionary[kProductListDesc] = self.desc;
	}
	if(self.idField != nil){
		dictionary[kProductListIdField] = self.idField;
	}
	if(self.name != nil){
		dictionary[kProductListName] = self.name;
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
	if(self.attributes != nil){
		[aCoder encodeObject:self.attributes forKey:kProductListAttributes];
	}
	if(self.desc != nil){
		[aCoder encodeObject:self.desc forKey:kProductListDesc];
	}
	if(self.idField != nil){
		[aCoder encodeObject:self.idField forKey:kProductListIdField];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kProductListName];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.attributes = [aDecoder decodeObjectForKey:kProductListAttributes];
	self.desc = [aDecoder decodeObjectForKey:kProductListDesc];
	self.idField = [aDecoder decodeObjectForKey:kProductListIdField];
	self.name = [aDecoder decodeObjectForKey:kProductListName];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	ProductList *copy = [ProductList new];

	copy.attributes = [self.attributes copy];
	copy.desc = [self.desc copy];
	copy.idField = [self.idField copy];
	copy.name = [self.name copy];

	return copy;
}
@end