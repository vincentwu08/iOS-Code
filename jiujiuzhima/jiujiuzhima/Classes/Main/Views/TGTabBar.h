//
//  TGTabBar.h
//  jiujiuzhima
//
//  Created by 汉森 on 15/8/18.
//  Copyright (c) 2015年 hansen. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TGTabBar;

@protocol TGTabBarDelegate <NSObject>

@optional
- (void)tabBarDidClickedPlusButton:(TGTabBar *)tabBar;

@end

@interface TGTabBar : UITabBar
@property (nonatomic, weak) id<TGTabBarDelegate> tabBarDelegate;
@end

