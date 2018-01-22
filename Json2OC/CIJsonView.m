//
//  CIJsonView.m
//  Json2OC
//
//  Created by tanhui on 2018/1/22.
//  Copyright © 2018年 tanhui. All rights reserved.
//

#import "CIJsonView.h"
#import <Masonry/Masonry.h>
#import "OTabs.h"
#import "PageHeader.h"
#import "UIView+Sibling.h"
#import "Page.h"
#import "Buttons.h"

@implementation CIJsonView

#pragma mark -- LifeCycle
/**
 initial Method

 @return instance
 */
- (instancetype)init {
    self = [super init];
    if (self) {
        [self setUpView];
    }
    return self;
}

#pragma mark -- Private Method

/**
 初始化界面布局
 */
- (void)setUpView {
//  根节点 view_31 (id 为31)
    UIView *view_31 = [[UIView alloc]init];
    [self addSubview:view_31];
    [view_31 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.height.equalTo(view_31.superview).multipliedBy(1.0);
        make.left.right.top.equalTo(view_31.superview);
    }];
    view_31.backgroundColor = [UIColor redColor];
    
//  view_31 的第一个字节点34
    {
        UIView *tempParent = view_31;
        
        UIView *view_31_34 = [[UIView alloc]init];
        [tempParent addSubview:view_31_34];
        [view_31_34 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.equalTo(tempParent);
            make.width.equalTo(tempParent);
        }];
        view_31_34.backgroundColor = [UIColor greenColor];
        
        //  view_34 的子节点
        {
            UIView *tempParent = view_31_34;
            
            PageHeader *view_34_35 = [[PageHeader alloc]init];
            [tempParent addSubview:view_34_35];
            [view_34_35 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.left.equalTo(tempParent);
            }];
            
            [tempParent.lastChild mas_makeConstraints:^(MASConstraintMaker *make) {
                make.bottom.equalTo(tempParent);
            }];
        }
    };

    
    
//  view_31 的第二个字节点36
    {
        UIView *tempParent = view_31;
        
        UIView *view_31_36 = [[UIView alloc]init];
        [tempParent addSubview:view_31_36];
        [view_31_36 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(tempParent);
            // 要找到上一个兄弟节点
            make.top.equalTo(view_31_36.previousSibling.mas_bottom);
        }];
        view_31_36.backgroundColor = [UIColor blueColor];
        //  view_36 的子节点
        {
            UIView *tempParent = view_31_36;
            //  子节点 37
            OTabs *otabs_36_37 = [[OTabs alloc]init];
            [tempParent addSubview:otabs_36_37];
            [otabs_36_37 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.left.right.equalTo(tempParent);
            }];
            
            // 子节点 38
            Buttons *button_36_38 = [[Buttons alloc]init];
            [tempParent addSubview:button_36_38];
            [button_36_38 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(button_36_38.previousSibling.mas_bottom);
                make.left.equalTo(tempParent);
            }];

            // 子节点39
            UITableView *table_36_39 = [[UITableView alloc]init];
            [tempParent addSubview:table_36_39];
            [table_36_39 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(table_36_39.previousSibling.mas_bottom);
                make.left.right.equalTo(tempParent);
                make.height.equalTo(@300);
            }];
            table_36_39.backgroundColor = [UIColor brownColor];
//

            // 子节点40
            UIView *view_36_40 = [[UIView alloc]init];
            [tempParent addSubview:view_36_40];
            [view_36_40 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(view_36_40.previousSibling.mas_bottom).offset(16);
                make.left.right.equalTo(tempParent);
            }];
            view_36_40.backgroundColor = [UIColor yellowColor];

            {
                UIView *tempParent = view_36_40;
                // 子节点41
                Page *page_40_41 = [[Page alloc]init];
                [tempParent addSubview:page_40_41];
                [page_40_41 mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.top.left.right.equalTo(tempParent);
                }];
                [tempParent.lastChild mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.bottom.equalTo(tempParent);
                }];
            }
            
            [tempParent.lastChild mas_makeConstraints:^(MASConstraintMaker *make) {
                make.bottom.equalTo(tempParent);
            }];
            
        };
        [tempParent mas_updateConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(tempParent.lastChild);
        }];
    };
    
}
@end


