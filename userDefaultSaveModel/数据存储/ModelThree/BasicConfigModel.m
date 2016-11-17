//
//	BasicConfigModel.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "BasicConfigModel.h"

NSString *const kBasicConfigModelOrgName = @"orgName";
NSString *const kBasicConfigModelOrgNameShort = @"orgNameShort";
NSString *const kBasicConfigModelProductList = @"productList";
NSString *const kBasicConfigModelUploadInfoMap = @"uploadInfoMap";
NSString *const kBasicConfigModelUploadTenantId = @"kBasicConfigModelUploadTenantId";

@interface BasicConfigModel ()
@end

@implementation BasicConfigModel

/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kBasicConfigModelOrgName] isKindOfClass:[NSNull class]]){
        self.orgName = dictionary[kBasicConfigModelOrgName];
    }
    if(![dictionary[kBasicConfigModelOrgNameShort] isKindOfClass:[NSNull class]]){
        self.orgNameShort = dictionary[kBasicConfigModelOrgNameShort];
    }
    if(dictionary[kBasicConfigModelProductList] != nil && [dictionary[kBasicConfigModelProductList] isKindOfClass:[NSArray class]]){
        NSArray * productListDictionaries = dictionary[kBasicConfigModelProductList];
        NSMutableArray * productListItems = [NSMutableArray array];
        for(NSDictionary * productListDictionary in productListDictionaries){
            ProductList * productListItem = [[ProductList alloc] initWithDictionary:productListDictionary];
            [productListItems addObject:productListItem];
        }
        self.productList = productListItems;
    }
    if(![dictionary[kBasicConfigModelUploadInfoMap] isKindOfClass:[NSNull class]]){
        self.uploadInfoMap = [[UploadInfoMap alloc] initWithDictionary:dictionary[kBasicConfigModelUploadInfoMap]];
    }
    
    return self;
}


+ (NSDictionary *)modelContainerPropertyGenericClass{
    return @{@"productList" : [ProductList class]};
}

/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.orgName != nil){
        dictionary[kBasicConfigModelOrgName] = self.orgName;
    }
    if(self.orgNameShort != nil){
        dictionary[kBasicConfigModelOrgNameShort] = self.orgNameShort;
    }
    if(self.productList != nil){
        NSMutableArray * dictionaryElements = [NSMutableArray array];
        for(ProductList * productListElement in self.productList){
            [dictionaryElements addObject:[productListElement toDictionary]];
        }
        dictionary[kBasicConfigModelProductList] = dictionaryElements;
    }
    if(self.uploadInfoMap != nil){
        dictionary[kBasicConfigModelUploadInfoMap] = [self.uploadInfoMap toDictionary];
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
    if(self.orgName != nil){
        [aCoder encodeObject:self.orgName forKey:kBasicConfigModelOrgName];
    }
    if(self.orgNameShort != nil){
        [aCoder encodeObject:self.orgNameShort forKey:kBasicConfigModelOrgNameShort];
    }
    if(self.productList != nil){
        [aCoder encodeObject:self.productList forKey:kBasicConfigModelProductList];
    }
    if(self.uploadInfoMap != nil){
        [aCoder encodeObject:self.uploadInfoMap forKey:kBasicConfigModelUploadInfoMap];
    }
    if(self.tenantId != nil){
        [aCoder encodeObject:self.tenantId forKey:kBasicConfigModelUploadTenantId];
    }
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.orgName = [aDecoder decodeObjectForKey:kBasicConfigModelOrgName];
    self.orgNameShort = [aDecoder decodeObjectForKey:kBasicConfigModelOrgNameShort];
    self.productList = [aDecoder decodeObjectForKey:kBasicConfigModelProductList];
    self.uploadInfoMap = [aDecoder decodeObjectForKey:kBasicConfigModelUploadInfoMap];
    self.tenantId = [aDecoder decodeObjectForKey:kBasicConfigModelUploadTenantId];
    return self;
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    BasicConfigModel *copy = [BasicConfigModel new];
    
    copy.orgName = [self.orgName copy];
    copy.orgNameShort = [self.orgNameShort copy];
    copy.productList = [self.productList copy];
    copy.uploadInfoMap = [self.uploadInfoMap copy];
    copy.tenantId = [self.tenantId copy];
    
    return copy;
}

#pragma mark Model的存取方法

+ (void)saveBasicConfigModel:(BasicConfigModel *)basicConfigModel {
    [self saveBasicConfigModel:basicConfigModel key:UserdefaultKey_BasicConfigModel];
}

+ (BasicConfigModel *)readBasicConfigModel {
    return [self readBasicConfigModelWithKey:UserdefaultKey_BasicConfigModel];
}

+ (void)saveBasicConfigModel:(BasicConfigModel *)basicConfigModel key:(NSString *)key {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //将数组或模型转为NSdata
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:basicConfigModel];
    [userDefaults setObject:data forKey:key];
    [userDefaults synchronize];
}

+ (BasicConfigModel *)readBasicConfigModelWithKey:(NSString *)key {
    NSUserDefaults *userDefaultsRead = [NSUserDefaults standardUserDefaults];
    NSData *data = [userDefaultsRead dataForKey:key];
    BasicConfigModel *model = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    return model;
}

@end
