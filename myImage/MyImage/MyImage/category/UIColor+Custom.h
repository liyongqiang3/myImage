//
//  UIColor+Custom.h
//  BaiduImage
//
//  Created by wangkunpeng on 15/6/9.
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Custom)

/**
 * get a custom color
 */
+ (UIColor *)colorWithR:(int)red g:(int)green b:(int)blue;


/**
 * get a custom color
 */
+ (UIColor *)colorWithR:(int)red g:(int)green b:(int)blue alpha:(CGFloat)alpha;



/**
 * a color is alpha color or not
 */
+ (BOOL)isAlphaColorWithColor:(UIColor *)color;



/**
 * random get a beautiful color
 */
+ (UIColor *)randomBeautfiulBgColor;

/**
 *  十六进制转color
 *
 *  @param hex #FFFFFF
 *
 *  @return
 */
+ (UIColor *)colorWithHexString:(NSString*)hex;
+ (UIColor *)colorWithHexString:(NSString *)hex alpha:(CGFloat)alpha;
@end
