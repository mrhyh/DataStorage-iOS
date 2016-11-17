//
//	UploadInfoMap.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "UploadInfoMap.h"

NSString *const kUploadInfoMapEDITED = @"EDITED";
NSString *const kUploadInfoMapEDITEDCOMPRESS = @"EDITED_COMPRESS";
NSString *const kUploadInfoMapORIGINAL = @"ORIGINAL";
NSString *const kUploadInfoMapORIGINALCOMPRESS = @"ORIGINAL_COMPRESS";
NSString *const kUploadInfoMapPHOTO = @"PHOTO";

@interface UploadInfoMap ()
@end
@implementation UploadInfoMap




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kUploadInfoMapEDITED] isKindOfClass:[NSNull class]]){
		self.eDITED = [[EDITED alloc] initWithDictionary:dictionary[kUploadInfoMapEDITED]];
	}

	if(![dictionary[kUploadInfoMapEDITEDCOMPRESS] isKindOfClass:[NSNull class]]){
		self.eDITEDCOMPRESS = [[EDITED alloc] initWithDictionary:dictionary[kUploadInfoMapEDITEDCOMPRESS]];
	}

	if(![dictionary[kUploadInfoMapORIGINAL] isKindOfClass:[NSNull class]]){
		self.oRIGINAL = [[EDITED alloc] initWithDictionary:dictionary[kUploadInfoMapORIGINAL]];
	}

	if(![dictionary[kUploadInfoMapORIGINALCOMPRESS] isKindOfClass:[NSNull class]]){
		self.oRIGINALCOMPRESS = [[EDITED alloc] initWithDictionary:dictionary[kUploadInfoMapORIGINALCOMPRESS]];
	}

	if(![dictionary[kUploadInfoMapPHOTO] isKindOfClass:[NSNull class]]){
		self.pHOTO = [[EDITED alloc] initWithDictionary:dictionary[kUploadInfoMapPHOTO]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.eDITED != nil){
		dictionary[kUploadInfoMapEDITED] = [self.eDITED toDictionary];
	}
	if(self.eDITEDCOMPRESS != nil){
		dictionary[kUploadInfoMapEDITEDCOMPRESS] = [self.eDITEDCOMPRESS toDictionary];
	}
	if(self.oRIGINAL != nil){
		dictionary[kUploadInfoMapORIGINAL] = [self.oRIGINAL toDictionary];
	}
	if(self.oRIGINALCOMPRESS != nil){
		dictionary[kUploadInfoMapORIGINALCOMPRESS] = [self.oRIGINALCOMPRESS toDictionary];
	}
	if(self.pHOTO != nil){
		dictionary[kUploadInfoMapPHOTO] = [self.pHOTO toDictionary];
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
	if(self.eDITED != nil){
		[aCoder encodeObject:self.eDITED forKey:kUploadInfoMapEDITED];
	}
	if(self.eDITEDCOMPRESS != nil){
		[aCoder encodeObject:self.eDITEDCOMPRESS forKey:kUploadInfoMapEDITEDCOMPRESS];
	}
	if(self.oRIGINAL != nil){
		[aCoder encodeObject:self.oRIGINAL forKey:kUploadInfoMapORIGINAL];
	}
	if(self.oRIGINALCOMPRESS != nil){
		[aCoder encodeObject:self.oRIGINALCOMPRESS forKey:kUploadInfoMapORIGINALCOMPRESS];
	}
	if(self.pHOTO != nil){
		[aCoder encodeObject:self.pHOTO forKey:kUploadInfoMapPHOTO];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.eDITED = [aDecoder decodeObjectForKey:kUploadInfoMapEDITED];
	self.eDITEDCOMPRESS = [aDecoder decodeObjectForKey:kUploadInfoMapEDITEDCOMPRESS];
	self.oRIGINAL = [aDecoder decodeObjectForKey:kUploadInfoMapORIGINAL];
	self.oRIGINALCOMPRESS = [aDecoder decodeObjectForKey:kUploadInfoMapORIGINALCOMPRESS];
	self.pHOTO = [aDecoder decodeObjectForKey:kUploadInfoMapPHOTO];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	UploadInfoMap *copy = [UploadInfoMap new];

	copy.eDITED = [self.eDITED copy];
	copy.eDITEDCOMPRESS = [self.eDITEDCOMPRESS copy];
	copy.oRIGINAL = [self.oRIGINAL copy];
	copy.oRIGINALCOMPRESS = [self.oRIGINALCOMPRESS copy];
	copy.pHOTO = [self.pHOTO copy];

	return copy;
}
@end