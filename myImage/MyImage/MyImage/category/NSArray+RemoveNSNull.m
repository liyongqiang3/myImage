//
//  NSArray+RemoveNSNull.m
//  BaiduImage
//
//  Created by wangkunpeng on 15/6/9.
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "NSArray+RemoveNSNull.h"

@implementation NSArray (RemoveNSNull)

/**
 * remove all nsull obj in array
 */
- (NSArray *) arrayByRemoveNSNull
{
    NSMutableArray *copyArray = [self mutableCopy];
    [copyArray removeObjectIdenticalTo:[NSNull null]];
    if ([copyArray count] <= 0)
    {
        return nil;
        
    }else
    {
         return [copyArray copy];
    }
}

- (id)safeObjectAtIndex:(NSUInteger)index
{
    if (index < self.count) {
        return [self objectAtIndex:index];
    }
    return nil;
}

@end
