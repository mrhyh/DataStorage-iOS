#import <UIKit/UIKit.h>
#import "EDITED.h"
#import "EDITED.h"
#import "EDITED.h"
#import "EDITED.h"
#import "EDITED.h"

@interface UploadInfoMap : NSObject

@property (nonatomic, strong) EDITED * eDITED;
@property (nonatomic, strong) EDITED * eDITEDCOMPRESS;
@property (nonatomic, strong) EDITED * oRIGINAL;
@property (nonatomic, strong) EDITED * oRIGINALCOMPRESS;
@property (nonatomic, strong) EDITED * pHOTO;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
