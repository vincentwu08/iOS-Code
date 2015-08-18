//
//  UIBarButtonItem+Extension.m
//  微博
//
//  Created by 汉森 on 15/7/6.
//  Copyright (c) 2015年 hansen. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+(instancetype)itemWithImageName:(NSString *)imageName highlightedImageName:(NSString *)highlightImageName target:(id)target action:(SEL)action{
    UIButton *itemButton = [[UIButton alloc] init];
    [itemButton setBackgroundImage:[UIImage imageWithName:imageName] forState:UIControlStateNormal];
    [itemButton setBackgroundImage:[UIImage imageWithName:highlightImageName] forState:UIControlStateHighlighted];
    itemButton.size = itemButton.currentBackgroundImage.size;
    [itemButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:itemButton];
}

@end
