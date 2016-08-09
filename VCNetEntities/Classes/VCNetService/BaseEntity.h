//
//  BaseEntity.h
//  WSFSZAss
//
//  Created by VcaiTech on 16/4/15.
//  Copyright © 2016年 VcaiTech. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface BaseEntity : MTLModel<MTLJSONSerializing>
-(NSDictionary *)toJsonDic;
@end
