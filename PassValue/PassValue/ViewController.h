//
//  ViewController.h
//  PassValue
//
//  Created by 朝亮 on 15/7/13.
//  Copyright (c) 2015年 liang. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PassValueDelegate.h"

@interface ViewController : UIViewController <PassValueDelegate>

@property(nonatomic,copy)NSString *value;

@end

