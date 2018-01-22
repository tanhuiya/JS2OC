//
//  PageHeader.m
//  Json2OC
//
//  Created by tanhui on 2018/1/22.
//  Copyright © 2018年 tanhui. All rights reserved.
//

#import "PageHeader.h"
#import <Masonry/Masonry.h>

@implementation PageHeader

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setUpView];
    }
    return self;
}

- (void)setUpView {
    self.backgroundColor = [UIColor lightGrayColor];
    UILabel *identyLabel = [[UILabel alloc]init];
    identyLabel.text = @"This is a PageHeader";
    [self addSubview:identyLabel];
    [identyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
    }];
}

- (void)didMoveToSuperview {
    [self mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@44);
        make.width.equalTo(self.superview);
    }];
}
@end
