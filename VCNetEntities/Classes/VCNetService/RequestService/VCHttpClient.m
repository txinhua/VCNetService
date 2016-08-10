//
//  VCHttpClient.m
//  VCNetRequest
//
//  Created by VcaiTech on 16/4/14.
//  Copyright © 2016年 VcaiTech. All rights reserved.
//

#import "VCHttpClient.h"
#import "SignatureUtils.h"
#import "VCRNService.h"


#define	kNetworkTestAddress						@"www.baidu.com"

@implementation VCHttpClient


+ (instancetype)sharedClient {
    
    static dispatch_once_t pred;
    static VCHttpClient *whatever = nil;
    dispatch_once(&pred, ^{

    });
    return whatever;

}

@end
