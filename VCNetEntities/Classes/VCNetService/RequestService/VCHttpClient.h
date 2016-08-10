//
//  VCHttpClient.h
//  VCNetRequest
//
//  Created by VcaiTech on 16/4/14.
//  Copyright © 2016年 VcaiTech. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    NetWorkType_None = 0,
    NetWorkType_WIFI,
    NetWorkType_WWAN
} NetWorkType;

@interface VCHttpClient :NSObject
+ (instancetype)sharedClient;


@end
