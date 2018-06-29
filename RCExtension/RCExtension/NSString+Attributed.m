
//
//  NSString+Attributed.m
//  RCExtension
//
//  Created by dow-np-162 on 2018/6/28.
//  Copyright © 2018年 rc.com.ltd. All rights reserved.
//

#import "NSString+Attributed.h"


@implementation NSString (Attributed)

+ (NSMutableAttributedString *)attributeStringWithString:(NSString *)str subStr:(NSString *)subStr fontSize:(CGFloat)fontSize color:(UIColor*)wordColor{
    
    NSMutableAttributedString *attributeText = [[NSMutableAttributedString alloc]initWithString:str];
    NSRange range = [str rangeOfString:subStr];
    [attributeText setAttributes:@{NSForegroundColorAttributeName:wordColor,NSFontAttributeName:[UIFont systemFontOfSize:fontSize]} range:range];
    return attributeText;
}

- (NSAttributedString *)attachmentStringWithImage:(NSString *)imageName attachmentBounds:(CGRect)bounds {
    NSAssert(self.length>1, @"string is too short!");
    NSMutableAttributedString *aStr = [[NSMutableAttributedString alloc] initWithString:self];
    NSTextAttachment *attach = [[NSTextAttachment alloc] init];
    attach.image = [UIImage imageNamed: imageName];
    attach.bounds = bounds;
    NSAttributedString *attachString = [NSAttributedString attributedStringWithAttachment:attach];
    [aStr insertAttributedString:attachString atIndex: aStr.length];
    return [aStr copy];
}

@end
