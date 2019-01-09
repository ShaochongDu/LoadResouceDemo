//
//  UIColor+DCColor.m
//  LoadResourceDemo
//
//  Created by SoDo on 2019/1/9.
//  Copyright © 2019 shaochong du. All rights reserved.
//

#import "UIColor+DCColor.h"

@implementation UIColor (DCColor)

+ (UIColor *)randomColor {
    CGFloat red = arc4random() % 255 / 255.0;
    CGFloat green = arc4random() % 255 / 255.0;
    CGFloat blue = arc4random() % 255 / 255.0;
//    CGFloat alpha = arc4random() % 10 / 10.0;
    return [[UIColor alloc] initWithRed:red green:green blue:blue alpha:1.0];
}

@end
