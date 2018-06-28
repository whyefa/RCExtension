//
//  RCMacro.h
//  RCKit
//
//  Created by Developer on 16/4/5.
//  Copyright © 2016年 rc.com.ltd. All rights reserved.
//

#ifndef RCMacro_h
#define RCMacro_h

/**  log   */
#ifdef DEBUG

#define RLog(FORMAT, ...) fprintf(stderr,"LINE:\t%d\t %s\n %s\n\n", __LINE__,__FUNCTION__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])

#else

#define RLog(...)

#endif

/**  Plist   */
#define UserDefaults  [NSUserDefaults standardUserDefaults]

/**    APP       */
#define __kBundleId__ [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"]

#define __kVersion__  [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]

/**  screen   */
#define SCREEN_BOUNDS_RC  [UIScreen mainScreen].bounds
#define SCREEN_WIDTH_RC   [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT_RC  [UIScreen mainScreen].bounds.size.height

/** color  */
#define RCColor(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

#define RandomColor [UIColor colorWithRed:(arc4random()%255)/255.0 green:(arc4random()%255)/255.0 blue:(arc4random()%255)/255.0 alpha:1]

#define ColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define ColorFromRGBA(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]

/**  font   */
#define kRCFont(fontSize) [UIFont systemFontOfSize:fontSize]

#define kRCBoldFont(fontSize) [UIFont boldSystemFontOfSize:fontSize]

/** device */

#define k4InchPhone (SCREEN_HEIGHT_RC <= 480)

#define k47InchPhone (SCREEN_HEIGHT_RC == 667)

#define k55InchPhone (SCREEN_HEIGHT_RC == 736)

#define kXPhone (SCREEN_HEIGHT_RC == 812)

#endif /* RCMacro_h */
