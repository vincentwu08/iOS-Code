//
//  TGHomeButtonView.m
//  jiujiuzhima
//
//  Created by 汉森 on 15/8/19.
//  Copyright (c) 2015年 hansen. All rights reserved.
//

#import "TGHomeButtonView.h"

#define TGButtonMaxCols 4

@interface TGHomeButtonView()

@property (nonatomic, weak) UIButton *firstBtn;
@property (nonatomic, weak) UIButton *secondBtn;
@property (nonatomic, weak) UIButton *thirdBtn;
@property (nonatomic, weak) UIButton *fourthBtn;

@end

@implementation TGHomeButtonView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *firstBtn = [[UIButton alloc] init];
        [firstBtn addTarget:self action:@selector(buttonDidClicked:) forControlEvents:UIControlEventTouchUpInside];
        firstBtn.tag = TGHomeButtonTypeMobile;
        [firstBtn setTitle:@"手机数码" forState:UIControlStateNormal];
        [self addSubview:firstBtn];
        self.firstBtn = firstBtn;
        
        UIButton *secondBtn = [[UIButton alloc] init];
        [secondBtn addTarget:self action:@selector(buttonDidClicked:) forControlEvents:UIControlEventTouchUpInside];
        secondBtn.tag = TGHomeButtonTypeCosmetics;
        [secondBtn setTitle:@"美容美妆" forState:UIControlStateNormal];
        [self addSubview:secondBtn];
        self.secondBtn = secondBtn;
        
        UIButton *thirdBtn = [[UIButton alloc] init];
        [thirdBtn addTarget:self action:@selector(buttonDidClicked:) forControlEvents:UIControlEventTouchUpInside];
        thirdBtn.tag = TGHomeButtonTypeDress;
        [thirdBtn setTitle:@"潮流服饰" forState:UIControlStateNormal];
        [self addSubview:thirdBtn];
        self.thirdBtn = thirdBtn;
        
        UIButton *fourthBtn = [[UIButton alloc] init];
        [fourthBtn addTarget:self action:@selector(buttonDidClicked:) forControlEvents:UIControlEventTouchUpInside];
        fourthBtn.tag = TGHomeButtonTypeLuggage;
        [fourthBtn setTitle:@"精品箱包" forState:UIControlStateNormal];
        [self addSubview:fourthBtn];
        self.firstBtn = fourthBtn;
    }
    return self;
}

- (void)buttonDidClicked:(UIButton *)btn{
    [[NSNotificationCenter defaultCenter] postNotificationName:TGHomeButtonDidClicked object:nil userInfo:@{TGSelectedButton : btn}];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    //排列首页所有按钮
    NSUInteger count = self.subviews.count;
    CGFloat buttonViewW = self.width / TGButtonMaxCols;
    CGFloat buttonViewH = self.height;
    for (int i = 0; i<count; i++) {
        UIButton *buttonView = self.subviews[i];
        buttonView.x = (i % TGButtonMaxCols) * buttonViewW;
        buttonView.y = (i / TGButtonMaxCols) * buttonViewH;
        buttonView.width = buttonViewW;
        buttonView.height = buttonViewH;
    }
}

@end
