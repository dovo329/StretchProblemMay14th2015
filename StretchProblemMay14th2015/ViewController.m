//
//  ViewController.m
//  StretchProblemMay14th2015
//
//  Created by Douglas Voss on 5/14/15.
//  Copyright (c) 2015 DougsApps. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+UIColor_Random.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *pressMe = [[UIButton alloc] initWithFrame:CGRectMake(15.0, 40.0, 300.0, 40.0)];
    [pressMe setTitle:@"Press Me" forState:UIControlStateNormal];
    pressMe.backgroundColor = [UIColor whiteColor];
    [pressMe setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:pressMe];
    [pressMe addTarget:self action:@selector(pressMeHandler) forControlEvents:UIControlEventTouchUpInside];
    
    [self randomizeBackgroundColor];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)randomizeBackgroundColor {
    UIColor *randColor = [UIColor randomColor];
    NSLog(@"random created color is %@", randColor);
    self.view.backgroundColor = randColor;
}

-(void)pressMeHandler{
    [self randomizeBackgroundColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
