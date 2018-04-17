//
//  ViewController.m
//  SJCustomButton
//
//  Created by 王珅剑 on 2018/4/17.
//  Copyright © 2018年 王珅剑. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Count.h"

#define CostomColor(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1] //颜色宏定义

@interface ViewController (){
    UIButton *_btn;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 150, 50)];
    _btn.backgroundColor = CostomColor(8, 46, 84);
    [_btn setTitle:@"获取验证码" forState:UIControlStateNormal];
    _btn.titleLabel.font = [UIFont systemFontOfSize:12.0];
    _btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_btn];
    
    [_btn addTarget:self action:@selector(send) forControlEvents:UIControlEventTouchUpInside];
}

-(void)send{
    [_btn clickWithCount];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
