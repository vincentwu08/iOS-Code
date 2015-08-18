//
//  UIImage+Extension.m
//  微博
//
//  Created by 汉森 on 15/7/5.
//  Copyright (c) 2015年 hansen. All rights reserved.
//

#import "UIImage+Extension.h"



@implementation UIImage (Extension)

+(instancetype)imageWithName:(NSString *)imageName{
    UIImage *image = nil;
    if ( iOS7 ) {
        NSString *name = imageName;
        image = [UIImage imageNamed:[name stringByAppendingString:@"_os7"]];
    }
    if ( !image ) {
        image = [UIImage imageNamed:imageName];
    }
    return image;
}

+ (UIImage *)resizedImage:(NSString *)name
{
    UIImage *image = [UIImage imageWithName:name];
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}

@end
