//
//  ViewController.m
//  PassValue
//
//  Created by 朝亮 on 15/7/13.
//  Copyright (c) 2015年 liang. All rights reserved.
//

#import "ViewController.h"

#import "SecondViewController.h"

@interface ViewController ()

@property(nonatomic,strong)UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setTitle:@"first ViewController"];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 80, 50)];
    
    [label setText:@"数据："];
    [self.view addSubview:label];
    
    
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(150, 100, 100, 50)];
    
    [self.label setText:@""];
    [self.label setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:self.label];
    
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 100, 50)];
   // [button setBackgroundColor:[UIColor redColor]];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitle:@"跳转" forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(breakController) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
   // [[SecondViewController alloc]init];
}

-(void)passValue:(NSString *)value
{
    self.value = value;
    
    
    [self.label setText:value];
}

-(void)breakController
{
    SecondViewController *sendviewController = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:sendviewController animated:true];
    
    sendviewController.delegate = self;
    
    [sendviewController passValueIn:@"第一次传值"];
}

@end
