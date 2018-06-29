//
//  NSString+NameRule.h
//  RCExtension
//
//  Created by dow-np-162 on 2018/6/28.
//  Copyright © 2018年 rc.com.ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (NameRule)

NSString* convertToCamelCase(NSString *name);

NSString* convertToSnakeCase(NSString *name);

@end
