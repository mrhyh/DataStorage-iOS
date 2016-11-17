#import <UIKit/UIKit.h>
#import "ProductList.h"
#import "UploadInfoMap.h"
#import "productList.h"

#define UserdefaultKey_BasicConfigModel @"UserdefaultKey_BasicConfigModel"

@interface BasicConfigModel : NSObject

@property (nonatomic, copy)   NSString * tenantId;
@property (nonatomic, copy)   NSString * orgName;
@property (nonatomic, copy)   NSString * orgNameShort;
@property (nonatomic, strong) NSArray<ProductList *> * productList;
@property (nonatomic, strong) UploadInfoMap * uploadInfoMap;
@property (nonatomic, assign) NSInteger currentSelectProductListIndex;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

/*Save complex model*/
+ (void)saveBasicConfigModel:(BasicConfigModel *)basicConfigModel;
+ (BasicConfigModel *)readBasicConfigModel;

+ (void)saveBasicConfigModel:(BasicConfigModel *)basicConfigModel key:(NSString *)key;
+ (BasicConfigModel *)readBasicConfigModelWithKey:(NSString *)key;
@end
