//
//  NSString+Md5.m
//  BaiduImage
//
//  Created by peakerWd on 15/6/30.
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "NSString+Md5.h"
#import "GTMBase64.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Md5)

- (NSString *)MD5
{
    if (self.length <= 0) {
        return nil;
    }
    const char *cStr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    
    return [[NSString
             stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1],
             result[2], result[3],
             result[4], result[5],
             result[6], result[7],
             result[8], result[9],
             result[10], result[11],
             result[12], result[13],
             result[14], result[15]
             ] lowercaseString];
}

- (NSString *)encodeBase64
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    //转换到base64
    data = [GTMBase64 encodeData:data];
    NSString * base64String = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return base64String;
}

- (NSString *)decodeBase64
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    //base64解码
    data = [GTMBase64 decodeData:data];
    NSString * retString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return retString;
}

@end
