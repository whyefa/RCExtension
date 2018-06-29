//
//  NSString+NameRule.m
//  RCExtension
//
//  Created by dow-np-162 on 2018/6/28.
//  Copyright © 2018年 rc.com.ltd. All rights reserved.
//

#import "NSString+NameRule.h"

@implementation NSString (NameRule)

NSString* convertToCamelCase(NSString *name) {
    NSMutableString *str = [NSMutableString stringWithString:name];
    while ([str containsString:@"_"]) {
        NSRange range = [str rangeOfString:@"_"];
        if (range.location + 1 < [str length]) {
            char c = [str characterAtIndex:range.location+1];
            [str replaceCharactersInRange:NSMakeRange(range.location, range.length+1) withString:[[NSString stringWithFormat:@"%c",c] uppercaseString]];
        }
    }
    return str;
}

NSString* convertToSnakeCase(NSString *name) {
    NSMutableString *str = [NSMutableString stringWithString:name];
    for (int i = 0; i < str.length; i ++) {
        char c = [str characterAtIndex:i];
        if ((c > 64) && (c < 91)) {
            NSRange range = NSMakeRange(i, 1);
            [str replaceCharactersInRange:range withString:[NSString stringWithFormat:@"_%@", [[NSString stringWithFormat:@"%c",c] lowercaseString]]];
        }
    }
    return str;
}

@end
