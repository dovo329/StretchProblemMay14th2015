//
//  UIColor+UIColor_Random.m
//  StretchProblemMay14th2015
//
//  Created by Douglas Voss on 5/14/15.
//  Copyright (c) 2015 DougsApps. All rights reserved.
//

#import "UIColor+UIColor_Random.h"

@implementation UIColor (UIColor_Random)

+(UIColor *)randomColor {
    CGFloat red=arc4random_uniform(256)/256.0;
    CGFloat green=arc4random_uniform(256)/256.0;
    CGFloat blue=arc4random_uniform(256)/256.0;
    
    NSLog(@"random created color is red=%f, green=%f, blue=%f", red, green, blue);
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

@end
