//
//  ViewController.m
//  Json2OC
//
//  Created by tanhui on 2018/1/22.
//  Copyright © 2018年 tanhui. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#import "CIJsonView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setEdgesForExtendedLayout: UIRectEdgeNone];
    CIJsonView *jsonView = [[CIJsonView alloc]init];
    [self.view addSubview:jsonView];
    [jsonView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(jsonView.superview);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
