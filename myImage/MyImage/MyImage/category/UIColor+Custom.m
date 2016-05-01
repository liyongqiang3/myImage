//
//  UIColor+Custom.m
//  BaiduImage
//
//  Created by wangkunpeng on 15/6/9.
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "UIColor+Custom.h"

@implementation UIColor (Custom)

/**
 * get a custom color
 */
+ (UIColor *)colorWithR:(int)red g:(int)green b:(int)blue
{
    return [UIColor colorWithR:red g:green b:blue alpha:1.0f]; //不透明
}


/**
 * get a custom color
 */
+ (UIColor *)colorWithR:(int)red g:(int)green b:(int)blue alpha:(CGFloat)alpha
{
    if(red > 1 || green > 1 || blue > 1)
    {
        return  [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:alpha];
    }
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}


/**
 * a color is alpha color or not
 */
+ (BOOL)isAlphaColorWithColor:(UIColor *)color
{
    NSUInteger num = CGColorGetNumberOfComponents(color.CGColor);
    const CGFloat *components = CGColorGetComponents(color.CGColor);
    BOOL isAlpha = NO;
    if (num >= 4)
    {
        CGFloat alpha = components[3];
        if(alpha < 1.0) //透明的颜色
        {
            isAlpha = YES;
        }
    }
    return isAlpha;
}


/**
 * random get a beautiful color
 */
+ (UIColor *)randomBeautfiulBgColor
{
    int value = arc4random() % 10;
    UIColor *color = nil;
    switch (value) {
        case 0:
        {
            color = [UIColor colorWithR:195 g:177 b:157];
            break;
        }
        case 1:
        {
            color = [UIColor colorWithR:143 g:163 b:167];
            break;
        }
        case 2:
        {
            color = [UIColor colorWithR:189 g:171 b:169];
            break;
        }
        case 3:
        {
            color = [UIColor colorWithR:177 g:197 b:163];
            break;
        }
        case 4:
        {
            color = [UIColor colorWithR:200 g:188 b:152];
            break;
        }
        case 5:
        {
            color = [UIColor colorWithR:219 g:191 b:178];
            break;
        }
        case 6:
        {
            color = [UIColor colorWithR:175 g:154 b:178];
            break;
        }
        case 7:
        {
            color = [UIColor colorWithR:182 g:173 b:173];
            break;
        }
        case 8:
        {
            color = [UIColor colorWithR:143 g:178 b:191];
            break;
        }
        case 9:
        {
            color = [UIColor colorWithR:163 g:166 b:185];
            break;
        }
        default:
        {
            color = [UIColor lightGrayColor];
            break;
        }
    }
    
    return color;
}

+ (UIColor *)colorWithHexString:(NSString *)hex alpha:(CGFloat)alpha
{
    NSString *colorString = [hex stringByReplacingOccurrencesOfString:@"#" withString:@""];
    
    NSString *cString = [[colorString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor grayColor];
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    
    if ([cString length] != 6) return  [UIColor grayColor];
    
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

+ (UIColor *)colorWithHexString:(NSString *)hex
{
    return [[self class] colorWithHexString:hex alpha:1.f];
}

@end
