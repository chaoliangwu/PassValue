//
//  SecondViewController.m
//  PassValue
//
//  Created by 朝亮 on 15/7/13.
//  Copyright (c) 2015年 liang. All rights reserved.
//

#import "SecondViewController.h"

@class ViewController;

@interface SecondViewController ()


@property(nonatomic,strong)UITextField *text;
@property(nonatomic,strong)UILabel *label;
-(void)passValueOut;

@end

@implementation SecondViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTitle:@"second ViewController"];

    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 80, 50)];
    
    [label setText:@"数据："];
    [self.view addSubview:label];
    
    
    self.text = [[UITextField alloc]initWithFrame:CGRectMake(150, 100, 100, 50)];
    
    self.text.borderStyle = UITextBorderStyleRoundedRect;
    
    [self.text setText:self.value];
    //[self.text setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:self.text];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 100, 50)];
    [button setBackgroundColor:[UIColor redColor]];
    [button setTitle:@"传值" forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(passValueOut) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];

}

-(void)passValueOut
{
    
    [self.delegate passValue:self.text.text];
}

-(void)passValueIn:(NSString *)value
{
    self.value = value;
   // [self.text setText:value];
   // self.text.text = value;
}

@end
