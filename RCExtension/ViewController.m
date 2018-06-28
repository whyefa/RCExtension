//
//  ViewController.m
//  RCExtension
//
//  Created by Developer on 16/4/5.
//  Copyright © 2016年 rc.com.ltd. All rights reserved.
//

#import "ViewController.h"
#import "RCExtension/NSString+Extension/NSString+RCExtension.h"
#import "RCExtension/NSObject+Extension/NSObject+Extension.h"
#import "RCExtension/RCKit/RCDatePickerView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * name = @"用户名";
    self.label.backgroundColor = UIColor.cyanColor;
    NSAttributedString *aStr = [name attachmentStringWithImage:@"snow" attachmentBounds:CGRectMake(5, 2, 8, 8)];
    self.label.attributedText = aStr;
    RCDatePickerView * r = [[RCDatePickerView alloc] init];
    [r show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
