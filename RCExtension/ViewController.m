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
#import "RCPopoverView.h"

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
}

- (IBAction)popMenu:(id)sender {
    [self showMenuOfStyle:RCPopoverViewBorderStyleDark];
}
- (IBAction)shadowMenu:(id)sender {
    [self showMenuOfStyle:RCPopoverViewBorderStyleShadow];
}
- (IBAction)boarderMenu:(id)sender {
    [self showMenuOfStyle:RCPopoverViewBorderStyleBoarder];
}

- (void)showMenuOfStyle:(RCPopoverViewBorderStyle)borderStyle {
    RCPopoverView *v = [RCPopoverView popoverView];
    v.borderStyle = borderStyle;
    v.arrowStyle = RCPopoverViewArrowStyleTriangle;
    v.separatorColor = UIColor.redColor;
    v.shadowColor = [UIColor colorWithWhite:0 alpha:0.6];
    v.shadowParam = (RCPopoverShadow){0.3, 3, CGSizeZero};
    RCPopoverAction *a = [RCPopoverAction actionWithTitle:@"你好" handler:^(RCPopoverAction *action) {
        NSLog(@"nihao");
    }];
    RCPopoverAction *b = [RCPopoverAction actionWithTitle:@"再见" handler:^(RCPopoverAction *action) {
        NSLog(@"再见");
    }];
    [v showToPoint:CGPointMake(20, self.view.frame.size.height-50) withActions:@[a, b]];
}

@end
