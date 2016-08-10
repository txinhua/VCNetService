//
//  VCNetRequestBaseService.m
//  VCNetRequest
//
//  Created by VcaiTech on 16/4/14.
//  Copyright © 2016年 VcaiTech. All rights reserved.
//

#import "VCNetRequestBaseService.h"
#import "VCHttpClient.h"
#import "SignatureUtils.h"
#import "SerializeUtils.h"
#import "NSMutableDictionary+ConvertShaToken.h"

#define IsStrEmpty(_ref)    (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) ||([(_ref)isEqualToString:@""]))

#undef  NETWORKWWANUNABLE
#define NETWORKWWANUNABLE -20000

#undef  NETWORKUNABLE
#define NETWORKUNABLE -20001

#undef  NETWORKPARAMERROR
#define NETWORKPARAMERROR -10031

#undef  NETWORKRESPONSERROR
#define NETWORKRESPONSERROR -10030

#undef  NETWORKMETHODERROR
#define NETWORKMETHODERROR 405

//网络请求返回的基础类
@implementation ResponsedUnit
-(void)encodeFormDicTionary:(NSDictionary *)dic{
    self.sc = EncodeNumberFromDic(dic,@"sc");
    self.result =EncodeObjectFromDic(dic,@"result");
}
@end


@implementation VCNetRequestBaseService

-(void)requestDataFromServer:(NSString *)serverUrl withMethod:(NSString *)method Parame:(NSDictionary *)parame Body:(NSString *)body andCompletion:(NetResponseBlock)block{
    if (IsStrEmpty(body)) {
        [self requestDataFromServer:serverUrl withMethod:method Parame:parame andCompletion:block];
    }else{
        
        NSMutableDictionary *requestBody = [SignatureUtils packageRequestVerifyParameWithRequestParam:parame andBodyStr:body];
        
        serverUrl = [serverUrl stringByAppendingString:[self generateRequestLineFromDicTionary:requestBody]];
    }
}

-(NSString *)generateRequestLineFromDicTionary:(NSDictionary *)dic{
    
    NSMutableDictionary *realDic =[NSMutableDictionary dictionaryWithDictionary:dic];
    [realDic removeObjectsForKeys:@[@"Ws-Access-Token",@"token"]];
    return [NSString stringWithFormat:@"?%@",[realDic convertKeysValuesWithSortToString]];
    
}

-(void)requestDataFromServer:(NSString *)serverUrl withMethod:(NSString *)method Parame:(NSDictionary *)parame andCompletion:(NetResponseBlock)block{
    
}

@end
