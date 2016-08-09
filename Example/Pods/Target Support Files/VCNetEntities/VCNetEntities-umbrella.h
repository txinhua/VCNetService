#import <UIKit/UIKit.h>

#import "BaseEntity.h"
#import "VCHttpClient.h"
#import "VCNetRequestBaseService.h"
#import "SerializeUtils.h"
#import "ServerEntity.h"
#import "NSData+Base64.h"
#import "NSDate+JavaTimeStampToDate.h"
#import "NSDictionary+JSON.h"
#import "NSMutableDictionary+ConvertShaToken.h"
#import "NSString+MD5.h"
#import "NSString+Size.h"
#import "NSString+VCBase64.h"
#import "NSString+VCSHA1.h"
#import "SignatureUtils.h"
#import "VCRNService.h"

FOUNDATION_EXPORT double VCNetEntitiesVersionNumber;
FOUNDATION_EXPORT const unsigned char VCNetEntitiesVersionString[];

