
//
//  NSObject+Class.m
//  RCExtension
//
//  Created by Wangyefa on 2017/7/14.
//  Copyright © 2017年 rc.com.ltd. All rights reserved.
//

#import "NSObject+Class.h"

@implementation NSObject (Class)

BOOL isNull(id obj) {
    return [obj isKindOfClass:[NSNull class]];
}

BOOL isString(id obj) {
    return [obj isKindOfClass:[NSString class]];
}

BOOL isNumber(id obj){
    return [obj isKindOfClass:[NSNumber class]];
}

BOOL isDictionary(id obj){
    return [obj isKindOfClass:[NSDictionary class]];
}

BOOL isArray(id obj){
    return [obj isKindOfClass:[NSArray class]];
}

@end
