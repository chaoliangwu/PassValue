//
//  SecondViewController.h
//  PassValue
//
//  Created by 朝亮 on 15/7/13.
//  Copyright (c) 2015年 liang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassValueDelegate.h"

@interface SecondViewController : UIViewController

@property(nonatomic,copy)NSString *value;

@property(nonatomic,weak)id<PassValueDelegate> delegate;


-(void)passValueIn:(NSString*)value;

@end
