//
//  ZXHTool.m
//
//  Created by ZXH on 2017/6/16.
//  Copyright © 2017年 ZXH. All rights reserved.
//

#import "ZXHTool.h"
#import <CommonCrypto/CommonDigest.h>
#define DEFAULT_VOID_COLOR [UIColor blackColor]

@implementation ZXHTool
#pragma mark - 字符串验证工具

#pragma 正则匹配手机号
+ (BOOL)checkTelNumber:(NSString *) telNumber
{
    NSString *pattern = @"^1([38][0-9]|4[56789]|5[0-3,5-9]|6[56]|7[012345678]|9[89])\\d{8}$";//@"^1+[23456789]+\\d{9}";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:telNumber];
    return isMatch;
}


#pragma 正则匹配用户密码6-18位数字和字母组合
+ (BOOL)checkPassword:(NSString *) password
{
//    NSString *pattern = @"^(?![0-9]+$)(?![a-zA-Z]+$)[a-zA-Z0-9]{6,18}";
    NSString *pattern = @"^[A-Za-z0-9.*[-`=\\\[\\];,./~!@#$%^&*()_+|{}:<>?]+.*]{6,18}";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:password];
    return isMatch;
    
}

#pragma 正则匹配用户姓名,20位的中文或英文
+ (BOOL)checkUserName : (NSString *) userName
{
    NSString *pattern = @"^[a-zA-Z\u4E00-\u9FA5]{1,20}";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:userName];
    return isMatch;
    
}


#pragma 正则匹配用户身份证号15或18位
+ (BOOL)checkUserIdCard: (NSString *) idCard
{
    NSString *pattern = @"(^[0-9]{15}$)|([0-9]{17}([0-9]|X)$)";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:idCard];
    return isMatch;
}

#pragma 正则匹员工号,12位的数字
+ (BOOL)checkEmployeeNumber : (NSString *) number
{
    NSString *pattern = @"^[0-9]{12}";
    
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:number];
    return isMatch;
    
}

#pragma 正则匹配URL
+ (BOOL)checkURL : (NSString *) url
{
    NSString *pattern = @"^[0-9A-Za-z]{1,50}";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:url];
    return isMatch;
}

#pragma 匹配是否全部为数字
+ (BOOL)checkAllNumber : (NSString *)number{
    NSString *pattern = @"^[0-9]*$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:number];
    return isMatch;
}

+ (NSString *)md5EncryptWithString:(NSString *)string{
    return [self md5:string];
}

+ (NSString *)md5:(NSString *)string{
    const char *cStr = [string UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(cStr, (CC_LONG)strlen(cStr), digest);
    
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02x", digest[i]];
    }
    
    return result;
}

// 时间戳转时间
+ (NSString *)getDateStringWithTimeStr:(NSString *)str{
    NSString * subStr = [str substringWithRange:NSMakeRange(0, str.length-3)];
    NSTimeInterval time=[subStr doubleValue];//传入的时间戳str如果是精确到毫秒的记得要/1000
    NSDate *detailDate=[NSDate dateWithTimeIntervalSince1970:time];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init]; //实例化一个NSDateFormatter对象
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormatter setDateFormat:@"MM-dd"];
    NSString *currentDateStr = [dateFormatter stringFromDate: detailDate];
    return currentDateStr;
}

+(NSString*)getCurrentTimes{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    // ----------设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
    
    [formatter setDateFormat:@"MM-dd HH:mm"];
    
    //现在时间,你可以输出来看下是什么格式
    
    NSDate *datenow = [NSDate date];
    
    //----------将nsdate按formatter格式转成nsstring
    
    NSString *currentTimeString = [formatter stringFromDate:datenow];
    return currentTimeString;
    
}
+(NSString *)getAstroWithMonth:(NSInteger)m day:(NSInteger)d{
    NSString *astroString = @"魔羯水瓶双鱼白羊金牛双子巨蟹狮子处女天秤天蝎射手魔羯";
    NSString *astroFormat = @"102123444543";
    NSString *result;
    if (m<1||m>12||d<1||d>31){
        
        return @"";
    }
    if(m==2 && d>29){
        return @"";
    }
    else if(m==4 || m==6 || m==9 || m==11) {
        
        if (d>30) {
            return @"";
        }
    }
    result=[NSString stringWithFormat:@"%@",[astroString substringWithRange:NSMakeRange(m*2-(d < [[astroFormat substringWithRange:NSMakeRange((m-1), 1)] intValue] - (-19))*2,2)]];
    
    return result;
   
}


+ (NSString *)getXPMessageTime:(NSString *)timeIntervalStr
{
    timeIntervalStr = [NSString stringWithFormat:@"%@",timeIntervalStr];
    if (!(timeIntervalStr.length > 3)) {
        return nil;
    }
    NSString * subStr = [timeIntervalStr substringWithRange:NSMakeRange(0, timeIntervalStr.length-3)];
    NSTimeInterval time = [subStr doubleValue];//传入的时间戳str如果是精确到毫秒的记得要/1000
    NSDate *detailDate=[NSDate dateWithTimeIntervalSince1970:time];
    NSDateFormatter *wholeDateFormatter = [[NSDateFormatter alloc] init];
    [wholeDateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    NSString *wholeDateStr = [wholeDateFormatter stringFromDate: detailDate];//毫秒转成的完整时间

    NSString *timeStr = [wholeDateStr substringFromIndex:11];//时间

    NSString *yearStr = [wholeDateStr substringToIndex:4];

    NSString *dateStr = [wholeDateStr substringWithRange:NSMakeRange(5, 5)];//日期

    //得到与当前时间差
    NSTimeInterval  timeInterval = [detailDate timeIntervalSinceNow];
    NSString *currentYear = [[wholeDateFormatter stringFromDate: [NSDate date] ] substringToIndex:4];
    NSString *currentDateStr = [[wholeDateFormatter stringFromDate: [NSDate date] ] substringWithRange:NSMakeRange(5, 5)];
    timeInterval = -timeInterval;

    long temp = 0;
    NSString *result;
    if (timeInterval <= 60) {
        result = [NSString stringWithFormat:@"刚刚"];
    }
    else if((temp = timeInterval/60) < 60){
        result = [NSString stringWithFormat:@"%ld分钟前",temp];
    }

    else if((temp = temp/60) < 24 && [currentDateStr isEqualToString:dateStr]){
        result = [NSString stringWithFormat:@"%ld小时前",temp];
    }

    else if(temp < 48){
        result = [NSString stringWithFormat:@"昨天 %@",timeStr];
    }

//    else if(48 <= temp && temp < 72){
//        result = [NSString stringWithFormat:@"二天前"];
//    }
//    else if(72 <= temp && temp < 96){
//        result = [NSString stringWithFormat:@"三天前"];
//    }
    else if((temp = temp/24) < 31){
        result = [NSString stringWithFormat:@"%ld天前",temp];
    }

    else if((temp = temp/30) < 12 && [yearStr isEqualToString:currentYear]){//今年
        result = [NSString stringWithFormat:@"%ld月前",temp];
    }
//    else if(timeInterval < 365 * 24 * 60 * 60){//不是今年，但是时间少于365天
//        result = [NSString stringWithFormat:@"%@ %@",yearStr,dateStr];
//    }
    else{
        result = [wholeDateStr substringWithRange:NSMakeRange(0, 10)];
    }

    return  result;
}



+ (NSString *)getTimeStringWithTimeStr:(NSString *)str{
    if (!(str.length > 3)) {
        return nil;
    }
    NSString * subStr = [str substringWithRange:NSMakeRange(0, str.length-3)];
    NSTimeInterval time=[subStr doubleValue];//传入的时间戳str如果是精确到毫秒的记得要/1000
    NSDate *detailDate=[NSDate dateWithTimeIntervalSince1970:time];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init]; //实例化一个NSDateFormatter对象
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormatter setDateFormat:@"HH:mm"];
    NSString *currentDateStr = [dateFormatter stringFromDate: detailDate];
    return currentDateStr;
}

+ (NSString *)getDataAndTimeStringWithTimeStr:(NSString *)str{
    if (!(str.length > 3)) {
        return nil;
    }
    NSString * subStr = [str substringWithRange:NSMakeRange(0, str.length-3)];
    NSTimeInterval time=[subStr doubleValue];//传入的时间戳str如果是精确到毫秒的记得要/1000
    NSDate *detailDate=[NSDate dateWithTimeIntervalSince1970:time];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init]; //实例化一个NSDateFormatter对象
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormatter setDateFormat:@"MM-dd HH:mm"];
    NSString *currentDateStr = [dateFormatter stringFromDate: detailDate];
    return currentDateStr;
}

+ (NSTimeInterval)pleaseInsertStarTime:(NSString *)starTime andInsertEndTime:(NSString *)endTime{
    NSDateFormatter* formater = [[NSDateFormatter alloc] init];
    [formater setDateFormat:@"MM-dd HH:mm"];//根据自己的需求定义格式
    NSDate* startDate = [formater dateFromString:starTime];
    NSDate* endDate = [formater dateFromString:endTime];
    NSTimeInterval time = [endDate timeIntervalSinceDate:startDate];
    return time;
}

+ (BOOL)isToday:(NSString *)dateStr{
    NSDate *detaildate= [NSDate dateWithTimeIntervalSince1970:[dateStr doubleValue]];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    int unit = NSCalendarUnitDay | NSCalendarUnitMonth |  NSCalendarUnitYear;
    
    // 1.获得当前时间的年月日
    
    NSDateComponents *nowCmps = [calendar components:unit fromDate:[NSDate date]];
    
    // 2.获得self的年月日
    
    NSDateComponents *selfCmps = [calendar components:unit fromDate:detaildate];
    
    return
    
    (selfCmps.year == nowCmps.year) &&
    
    (selfCmps.month == nowCmps.month) &&
    
    (selfCmps.day == nowCmps.day);
}

//判断文件是否已经在沙盒中已经存在？
+(BOOL) isGiftFileExist:(NSString *)fileName
{
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Lottie" ofType:@"bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithPath:bundlePath];
    
    NSArray *components = [fileName componentsSeparatedByString:@"."];
    fileName = components.firstObject;
    
    NSError *error;
    NSString *filePath = [resourceBundle pathForResource:fileName ofType:@"json"];
    NSData *jsonData = [[NSData alloc] initWithContentsOfFile:filePath];
    NSDictionary  *JSONObject = jsonData ? [NSJSONSerialization JSONObjectWithData:jsonData
                                                                           options:0 error:&error] : nil;
    if (JSONObject && !error) {
        return YES;
    }else{
        return NO;
    }
}


#pragma mark - 颜色工具

+ (UIColor *) colorFromHexRGB:(NSString *) inColorString alpha:(CGFloat)alpha
{
    NSString *cString = [[inColorString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) return DEFAULT_VOID_COLOR;
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6) return DEFAULT_VOID_COLOR;
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:alpha];
}

+ (UIColor *)colorFromR:(float)R G:(float)G B:(float)B alpha:(CGFloat)alpha{
    return [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:alpha];
}

+ (UIColor *)randomColor{
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

+ (UIColor *)colorWithblue{
    return [self colorFromHexRGB:@"31adda" alpha:1.0];
}

+ (UIColor *)colorWithred{
    return [self colorFromHexRGB:@"de3e3e" alpha:1.0];
}

+ (UIColor *)colorWithgreen{
    return [self colorFromHexRGB:@"9ad000" alpha:1.0];
}

+ (UIColor *)colorWithblueH{
    return [self colorFromHexRGB:@"0a8bb5" alpha:1.0];
}

+ (UIColor *)colorWithredH{
    return [self colorFromHexRGB:@"eb4b4b" alpha:1.0];
}

+ (UIColor *)colorWithgreenH{
    return [self colorFromHexRGB:@"8eb816" alpha:1.0];
}

+ (UIColor *)colorWithEqua{
    return [self colorFromHexRGB:@"a6a5a7" alpha:1.0];
}

+ (UIColor *)colorWithCellHeight{
    return [UIColor colorWithWhite:0 alpha:0.6];
}

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}


@end
