#import <UIKit/UIKit.h>

@interface User : NSObject

@property (nonatomic, strong) NSString * applyMail;
@property (nonatomic, strong) NSString * cnName;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSObject * roleName;
@property (nonatomic, strong) NSString * tenantId;
@property (nonatomic, strong) NSObject * userPass;
@property (nonatomic, assign) BOOL valid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
