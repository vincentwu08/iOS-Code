//
//  TGHomeHeaderView.m
//  jiujiuzhima
//
//  Created by 汉森 on 15/8/19.
//  Copyright (c) 2015年 hansen. All rights reserved.
//

#import "TGHomeHeaderView.h"
#import "TGHomeScrollView.h"
#import "TGHomeButtonView.h"

@interface TGHomeHeaderView()

@property (nonatomic, weak) TGHomeScrollView *homeScrollView;
@property (nonatomic, weak) TGHomeButtonView *homeButtonView;

@end

@implementation TGHomeHeaderView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        //创建滚动条
        TGHomeScrollView *homeScrollView = [[TGHomeScrollView alloc] init];
        self.homeScrollView = homeScrollView;
        homeScrollView.backgroundColor = TGRandomColor;
        [self addSubview:homeScrollView];
        //创建按钮工具条
        TGHomeButtonView *homeButtonView = [[TGHomeButtonView alloc] init];
        self.homeButtonView = homeButtonView;
        homeButtonView.backgroundColor = TGRandomColor;
        [self addSubview:homeButtonView];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    //设置滚动条大小
    self.homeScrollView.width = TGScreenW;
    self.homeScrollView.height = TGHomeScrollViewHeight;
    //设置按钮工具条大小
    self.homeButtonView.y = self.homeScrollView.height;
    self.homeButtonView.width = TGScreenW;
    self.homeButtonView.height = 60;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
