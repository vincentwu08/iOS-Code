//
//  UIImage+Extension.h
//  微博
//
//  Created by 汉森 on 15/7/5.
//  Copyright (c) 2015年 hansen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)
+(instancetype)imageWithName:(NSString *)imageName;
+ (UIImage *)resizedImage:(NSString *)name;
@end
