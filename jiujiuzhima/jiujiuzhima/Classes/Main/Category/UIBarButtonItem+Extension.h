//
//  UIBarButtonItem+Extension.h
//  微博
//
//  Created by 汉森 on 15/7/6.
//  Copyright (c) 2015年 hansen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+(instancetype)itemWithImageName:(NSString *)imageName highlightedImageName:(NSString *)highlightImageName target:(id)target action:(SEL)action;
@end
