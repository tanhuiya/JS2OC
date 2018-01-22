//
//  UIView+Sibling.h
//  Json2OC
//
//  Created by tanhui on 2018/1/22.
//  Copyright © 2018年 tanhui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Sibling)
- (UIView *)nextSibling;
- (UIView *)previousSibling;
- (UIView *)lastChild;
- (UIView *)firstChild;
@end
