//
//  NSString+Md5.h
//  BaiduImage
//
//  Created by peakerWd on 15/6/30.
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Md5)

- (NSString *)MD5;

- (NSString *)encodeBase64;

- (NSString *)decodeBase64;

@end
