//
//  Page.m
//  Json2OC
//
//  Created by tanhui on 2018/1/22.
//  Copyright © 2018年 tanhui. All rights reserved.
//

#import "Page.h"
#import <Masonry/Masonry.h>

@implementation Page


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setUpView];
    }
    return self;
}

- (void)setUpView {
    self.backgroundColor = [UIColor darkGrayColor];
    UILabel *identyLabel = [[UILabel alloc]init];
    identyLabel.text = @"This is a Page";
    [self addSubview:identyLabel];
    [identyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
    }];
}
-(void)didMoveToSuperview{
    [super didMoveToSuperview];
    [self mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@44);
    }];
}

@end
