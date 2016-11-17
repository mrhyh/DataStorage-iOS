#import <UIKit/UIKit.h>
#import "User.h"

@interface LoginModel : NSObject

@property (nonatomic, assign) BOOL isLogin;
@property (nonatomic, strong) NSString * token;
@property (nonatomic, strong) User * user;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
