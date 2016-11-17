#import <UIKit/UIKit.h>

@interface EDITED : NSObject

@property (nonatomic, strong) NSString * accessKeyId;
@property (nonatomic, strong) NSString * accessKeySecret;
@property (nonatomic, strong) NSString * bucketName;
@property (nonatomic, strong) NSString * endpoint;
@property (nonatomic, strong) NSString * objectFolder;
@property (nonatomic, strong) NSString * objectKeyPrefix;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
