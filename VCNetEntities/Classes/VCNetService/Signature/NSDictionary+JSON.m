//
//  NSDictionary+JSON.m
//  VCTaskApiTest
//
//  Created by VcaiTech on 16/8/5.
//  Copyright © 2016年 VcaiTech. All rights reserved.
//

#import "NSDictionary+JSON.h"

@implementation NSDictionary (JSON)

- (NSString *)JsonString {
    NSError * error;
    NSData * jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                        options:0
                                                          error:&error];
    
    if (!jsonData) {
        return @"\"{}\""; // "{}";
    } else {
        NSString * jsonStr = [[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding] stringByReplacingOccurrencesOfString:@"\\/" withString:@"/"];
        jsonStr = [[[jsonStr stringByReplacingOccurrencesOfString:@"\"[" withString:@"["]stringByReplacingOccurrencesOfString:@"]\"" withString:@"]"] stringByReplacingOccurrencesOfString:@"\\" withString:@""];
        NSLog(@"callback json - %@", jsonStr);
        return jsonStr;
    }
}

@end
