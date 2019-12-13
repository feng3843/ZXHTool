//
//  LocalInterface.h
//  
//
//  Created by ZXH on 2017/6/13.
//  Copyright © 2017年 ZXH. All rights reserved.
//

#ifndef LocalInterface_h
#define LocalInterface_h

////GDDlog
//#ifdef DEBUG
//#   define GDDLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
//#else
//#   define GDDLog(...)
//#endif
//
////IN18 国际化
//#define Localized(key)   [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"]] ofType:@"lproj"]] localizedStringForKey:key value:nil table:@"Language"]
//
////尺寸定义
//#define ScreenWidth        [[UIScreen mainScreen] bounds].size.width
//#define ScreenHeight       [[UIScreen mainScreen] bounds].size.height
//#define SafeAreaTopHeight (ScreenHeight == 812.0 ? 88 : 64)
//#define SafeAreaBottomHeight (ScreenHeight == 812.0 ? 34 : 0)
//#define kDevice_Is_iPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)
//#define kTabbarHeight ((kDevice_Is_iPhoneX==NO)?49.0:83.0)
//#define kNavHeight ((kDevice_Is_iPhoneX==NO)?64.0:88.0)
//#define kbottomHeight ((kDevice_Is_iPhoneX==NO)?0:34)
////WeakSelf
//#define WeakSelf __weak typeof(self) weakSelf = self;
//
////空处理
//#define IsNilOrNull(_ref)   (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) || ([(_ref) isKindOfClass:[NSNull class]]) || ([(_ref) isEqual:@"(null)"]))
//#define isValidStr(_ref)    ((IsNilOrNull(_ref)==NO) && ([_ref length]>0))
//#define clearNil(str)       (isValidStr(str)?str:@"")
//#define clearNilWithZero(str)       (isValidStr(str)?str:@"0")
//
////AdjustsScrollViewInsetNever
//#define AdjustsScrollViewInsetNever(controller,view) if(@available(iOS 11.0, *)) {view.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;} else if([controller isKindOfClass:[UIViewController class]]) {controller.automaticallyAdjustsScrollViewInsets = false;}
//
////docment路径
//#define DOCUMENT_PATH [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]
//
////颜色
//#define Color(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
//#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
//#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
//green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
//blue:((float)(rgbValue & 0xFF))/255.0 \
//alpha:1.0]
//
//#define RGB(r,g,b)          [UIColor colorWithRed:(r)/255.f \
//                                            green:(g)/255.f \
//                                             blue:(b)/255.f \
//                                            alpha:1.f]
//
//#define RGBA(r,g,b,a)       [UIColor colorWithRed:(r)/255.f \
//                                            green:(g)/255.f \
//                                             blue:(b)/255.f \
//                                            alpha:(a)]
//
//#define RGBOF(rgbValue)     [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
//                                            green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
//                                             blue:((float)(rgbValue & 0xFF))/255.0 \
//                                            alpha:1.0]
//
//#define RGBA_OF(rgbValue)   [UIColor colorWithRed:((float)(((rgbValue) & 0xFF000000) >> 24))/255.0 \
//                                             green:((float)(((rgbValue) & 0x00FF0000) >> 16))/255.0 \
//                                              blue:((float)(rgbValue & 0x0000FF00) >> 8)/255.0 \
//                                             alpha:((float)(rgbValue & 0x000000FF))/255.0]
//
//#define RGBAOF(v, a)        [UIColor colorWithRed:((float)(((v) & 0xFF0000) >> 16))/255.0 \
//                                            green:((float)(((v) & 0x00FF00) >> 8))/255.0 \
//                                             blue:((float)(v & 0x0000FF))/255.0 \
//                                            alpha:a]
//
////版本判断
//#define IS_IOS_11 (([[[[UIDevice currentDevice].systemVersion componentsSeparatedByString:@"."] objectAtIndex:0] intValue] >= 11) ? YES : NO)
//
////获取版本号
//#define GET_SYSTEM_VERSION ([[UIDevice currentDevice].systemVersion doubleValue])
//#define IS_IPHONE_5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
//#define IS_IPHONE_6P ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )736 ) < DBL_EPSILON )
//#define  kFont(x)  IS_IPHONE_5?[UIFont systemFontOfSize:(x-1)]:IS_IPHONE_6P?[UIFont systemFontOfSize:(x+1)]:[UIFont systemFontOfSize:(x)]
//
//
//



#endif /* LocalInterface_h */
