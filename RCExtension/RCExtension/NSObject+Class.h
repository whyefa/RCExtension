//
//  NSObject+Class.h
//  RCExtension
//
//  Created by Wangyefa on 2017/7/14.
//  Copyright © 2017年 rc.com.ltd. All rights reserved.
//  判断是否是对应的 Class

#import <Foundation/Foundation.h>

@interface NSObject (Class)

BOOL isNull(id obj);

BOOL isString(id obj);

BOOL isNumber(id obj);

BOOL isDictionary(id obj);

BOOL isArray(id obj);

@end
