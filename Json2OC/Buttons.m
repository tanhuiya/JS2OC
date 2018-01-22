//
//  Buttons.m
//  Json2OC
//
//  Created by tanhui on 2018/1/22.
//  Copyright © 2018年 tanhui. All rights reserved.
//

#import "Buttons.h"
#import <Masonry/Masonry.h>

@implementation Buttons

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setUpView];
    }
    return self;
}

- (void)setUpView {
    self.backgroundColor = [UIColor greenColor];
    UILabel *identyLabel = [[UILabel alloc]init];
    identyLabel.text = @"This is a Button";
    [self addSubview:identyLabel];
    [identyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
    }];
}
-(void)didMoveToSuperview{
    [super didMoveToSuperview];
    [self mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@44);
        make.width.equalTo(self.superview);
    }];
}

@end
