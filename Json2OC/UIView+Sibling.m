//
//  UIView+Sibling.m
//  Json2OC
//
//  Created by tanhui on 2018/1/22.
//  Copyright © 2018年 tanhui. All rights reserved.
//

#import "UIView+Sibling.h"

@implementation UIView (Sibling)
- (UIView *)nextSibling {
    UIView *parent = self.superview;
    UIView *next = nil;
    for (NSInteger viewIndex = 0; viewIndex < parent.subviews.count; viewIndex++) {
        UIView *childView = parent.subviews[viewIndex];
        if (childView == self &&
            viewIndex < parent.subviews.count - 1) {
            // 自己不是父节点的最后一个节点
            next = parent.subviews[viewIndex + 1];
        }
    }
    return next;
}

- (UIView *)previousSibling {
    UIView *parent = self.superview;
    UIView *pre = nil;
    for (NSInteger viewIndex = 0; viewIndex < parent.subviews.count; viewIndex++) {
        UIView *childView = parent.subviews[viewIndex];
        if (childView == self &&
            viewIndex > 0) {
            // 自己不是父节点的最后一个节点
            pre = parent.subviews[viewIndex - 1];
        }
    }
    return pre;
}

- (UIView *)lastChild {
    return [self.subviews lastObject];
}
- (UIView *)firstChild {
    return [self.subviews firstObject];
}
@end
