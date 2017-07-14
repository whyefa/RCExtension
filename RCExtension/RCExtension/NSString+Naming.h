//
//  NSString+Naming.h
//  RCExtension
//
//  Created by Wangyefa on 2017/7/14.
//  Copyright © 2017年 rc.com.ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Naming)

/**
 将命名转为驼峰

 @param name 蛇形命名
 @return 驼峰命名
 */
NSString* convertToCamelCase(NSString *name);


/**
 将命名转为驼峰

 @param name 驼峰命名
 @return 蛇形命名
 */
NSString* convertToSnakeCase(NSString *name);

@end
