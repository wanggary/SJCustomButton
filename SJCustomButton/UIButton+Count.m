//
//  UIButton+Count.m
//  SJCustomButton
//
//  Created by 王珅剑 on 2018/4/17.
//  Copyright © 2018年 王珅剑. All rights reserved.
//

#import "UIButton+Count.h"
static int second = 60;

@implementation UIButton(Count)

-(void) clickWithCount{
    
    self.enabled = NO;
    
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector (timeFireMethod:) userInfo:nil repeats:YES];
}

-(void) timeFireMethod:(NSTimer *)timer{
    if (second == 0) {
        [timer invalidate];
        self.enabled = YES;
        second = 60;
        return;
    }else{
        second --;
    }
    
    self.titleLabel.text = [NSString stringWithFormat:@"%lds", (long)second];
    [self setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
}

@end
