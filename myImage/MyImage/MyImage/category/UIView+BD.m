//
//  UIView+Hi.m
//  baiduHi
//
//  Created by Hua Cao on 13-12-7.
//  Copyright (c) 2013年 Baidu. All rights reserved.
//

#import "UIView+BD.h"

@implementation UIView (BDViewController)

- (UIViewController *) viewController
{
    id nextResponder = [self nextResponder];
    if ([nextResponder isKindOfClass:[UIViewController class]]) {
        return nextResponder;
    } else if ([nextResponder isKindOfClass:[UIView class]]) {
        return [nextResponder viewController];
    } else {
        return nil;
    }
}

- (UIView *)tableOrCollectionView
{
    id nextResponder = [self nextResponder];
    if ([nextResponder isKindOfClass:[UITableView class]] ||
        [nextResponder isKindOfClass:[UICollectionView class]]) {
        return nextResponder;
    } else if ([nextResponder isKindOfClass:[UIView class]]) {
        return [nextResponder tableOrCollectionView];
    } else {
        return nil;
    }
}

@end
