#import <UIKit/UIKit.h>

@interface Attribute : NSObject

@property (nonatomic, strong) NSString * desc;
@property (nonatomic, strong) NSString * key;
@property (nonatomic, strong) NSObject * options;
@property (nonatomic, assign) BOOL required;
@property (nonatomic, strong) NSString * type;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
