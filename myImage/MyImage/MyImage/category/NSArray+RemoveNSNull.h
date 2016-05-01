//
//  NSArray+RemoveNSNull.h
//  BaiduImage
//
//  Created by wangkunpeng on 15/6/9.
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (RemoveNSNull)

/**
 * remove all nsull obj in array
 */
- (NSArray *) arrayByRemoveNSNull;

- (id)safeObjectAtIndex:(NSUInteger)index;

@end
