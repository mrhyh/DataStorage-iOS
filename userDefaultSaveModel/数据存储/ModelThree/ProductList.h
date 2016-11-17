#import <UIKit/UIKit.h>
#import "Attribute.h"

@interface ProductList : NSObject

@property (nonatomic, strong) NSArray<Attribute *> * attributes;
@property (nonatomic, strong) NSString * desc;
@property (nonatomic, strong) NSString * idField;
@property (nonatomic, strong) NSString * name;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
