//
//  BaseEntity.m
//  WSFSZAss
//
//  Created by VcaiTech on 16/4/15.
//  Copyright © 2016年 VcaiTech. All rights reserved.
//

#import "BaseEntity.h"

@implementation BaseEntity

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{};
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError **)error {
    self = [super initWithDictionary:dictionaryValue error:error];
    if (self == nil) return nil;
    
    return self;
}

-(NSDictionary *)toJsonDic{
    return [MTLJSONAdapter JSONDictionaryFromModel:self error:nil];
}
@end
