//
//  NSString+Attributed.h
//  RCExtension
//
//  Created by dow-np-162 on 2018/6/28.
//  Copyright © 2018年 rc.com.ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (Attributed)

/**
 *  get AttributedString
 *
 *  @param str       full      the entire string
 *  @param subStr    sub       the attributed sub string
 *  @param fontSize  subStr    the font of the sub string
 *  @param wordColor subStr    the color of the sub string
 *
 *  @return AttributedString
 */
+ (NSMutableAttributedString*)attributeStringWithString:(NSString *)str subStr:(NSString *)subStr fontSize:(CGFloat)fontSize color:(UIColor*)wordColor;


/**
 * get attachment string

 @param imageName the image displace at end of the string
 @param bounds attachment bounds
 @return attachment string
 */
- (NSAttributedString *)attachmentStringWithImage:(NSString *)imageName attachmentBounds:(CGRect)bounds;

@end
