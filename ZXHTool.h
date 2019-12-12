//
//  FYCheckRuleTool.h
//
//
//  Created by ZXH on 2017/6/16.
//  Copyright © 2017年 ZXH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ZXHTool : NSObject

#pragma mark - 字符串验证工具

#pragma 正则匹配手机号
+ (BOOL)checkTelNumber:(NSString *) telNumber;
#pragma 正则匹配用户密码6-18位数字和字母组合
+ (BOOL)checkPassword:(NSString *) password;
#pragma 正则匹配用户姓名,20位的中文或英文
+ (BOOL)checkUserName : (NSString *) userName;
#pragma 正则匹配用户身份证号
+ (BOOL)checkUserIdCard: (NSString *) idCard;
#pragma 正则匹配URL
+ (BOOL)checkURL : (NSString *) url;
#pragma 匹配是否全部为数字
+ (BOOL)checkAllNumber : (NSString *)number;
#pragma 时间戳转日期
+ (NSString *)getDateStringWithTimeStr:(NSString *)str;
#pragma 时间戳转日期和时间
+ (NSString *)getDataAndTimeStringWithTimeStr:(NSString *)str;

#pragma 时间戳转时分
+ (NSString *)getTimeStringWithTimeStr:(NSString *)str;
#pragma 获取当前时间
+(NSString*)getCurrentTimes;
#pragma 通过时间获取星座
+(NSString *)getAstroWithMonth:(NSInteger)m day:(NSInteger)d;
#pragma mark - 算时间差
+ (NSTimeInterval)pleaseInsertStarTime:(NSString *)starTime andInsertEndTime:(NSString *)endTime;
#pragma 时间戳是否是今天
+ (BOOL)isToday:(NSString *)dateStr;
#pragma 礼物是否存在
+(BOOL) isGiftFileExist:(NSString *)fileName;

//md5加密方法
+ (NSString *)md5EncryptWithString:(NSString *)string;

+ (NSString *)getXPMessageTime:(NSString *)timeIntervalStr;

#pragma mark - 颜色工具
+ (UIColor *)colorFromHexRGB:(NSString *) inColorString alpha:(CGFloat)alpha;
+ (UIColor *)colorFromR:(float)R G:(float)G B:(float)B alpha:(CGFloat)alpha;
+ (UIColor *)randomColor;
+ (UIColor *)colorWithblue;
+ (UIColor *)colorWithred;
+ (UIColor *)colorWithgreen;
+ (UIColor *)colorWithblueH;
+ (UIColor *)colorWithredH;
+ (UIColor *)colorWithgreenH;
+ (UIColor *)colorWithEqua;
+ (UIColor *)colorWithCellHeight;
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

@end
