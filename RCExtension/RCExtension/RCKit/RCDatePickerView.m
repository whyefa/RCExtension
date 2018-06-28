//
//  RCDatePickerView.m
//  HaitaoERP
//
//  Created by Developer on 15/7/13.
//  Copyright (c) 2015年 海涛旅游. All rights reserved.
//

#import "RCDatePickerView.h"

@interface RCDatePickerView ()

@property (nonatomic, strong) UIControl *control;

@property (nonatomic, strong) UIView    *contentView;

@end

@implementation RCDatePickerView

- (id)init {
    if (self = [super init]) {
        self.frame = UIScreen.mainScreen.bounds;
        [self configSubview];
    }
    return self;
}

#pragma mark- action
- (void)hide {
    [UIView animateWithDuration:0.3 animations:^{
        CGRect frame = _contentView.frame;
        frame.origin.y += _contentView.frame.size.height;
        _contentView.frame = frame;
        _control.alpha = 0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

- (void)show {
    UIWindow *keyWindow = [[UIApplication sharedApplication].delegate window];
    [self showInView:keyWindow];
}

- (void)showInView:(UIView *)view {
    [view addSubview:self];
    _control.alpha = 0;
    CGRect screen_bounds = [[UIScreen mainScreen] bounds];
    self.contentView.frame = CGRectMake(0, screen_bounds.size.height, screen_bounds.size.width, 270);
    [UIView animateWithDuration:0.3 delay:0.0 usingSpringWithDamping:0.7 initialSpringVelocity:0.9 options:UIViewAnimationOptionLayoutSubviews animations:^{
        CGRect frame = self.contentView.frame;
        frame.origin.y -= (self.contentView.frame.size.height-20);
        self.contentView.frame = frame;
        self.control.alpha = 0.4;
    } completion:^(BOOL finished) {
        
    }];
}

- (void)confirmAction:(id)sender {
    if ([self.delegate respondsToSelector:@selector(datePickerView:didSelectTime:)]) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd "];
        NSString *strDate = [dateFormatter stringFromDate:self.datePicker.date];
        [self.delegate datePickerView:self didSelectTime:strDate];
    }
    [self hide];
}

- (void)configSubview {
    [self addSubview: self.control];
    [self addSubview:self.contentView];
    [self.contentView addSubview:self.datePicker];
    [self.contentView addSubview:[self toolBar]];
}

#pragma mark- getter
- (UIControl *)control {
    if (!_control) {
        _control = [[UIControl alloc]initWithFrame:UIScreen.mainScreen.bounds];
        _control.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.35f];
        [_control addTarget:self action:@selector(hide) forControlEvents:UIControlEventTouchUpInside];
    }
    return _control;
}

- (UIView *)contentView {
    if (!_contentView) {
        CGRect screen_bounds = [[UIScreen mainScreen] bounds];
        _contentView = [[UIView alloc]initWithFrame:CGRectMake(0, screen_bounds.size.height-250, screen_bounds.size.width, 270)];
        _contentView.backgroundColor = [UIColor whiteColor];
    }
    return _contentView;
}

- (UIDatePicker *)datePicker {
    if (!_datePicker) {
        CGRect screen_bounds = [[UIScreen mainScreen] bounds];
        _datePicker = [[UIDatePicker alloc]init];
        _datePicker.backgroundColor = [UIColor whiteColor];
        _datePicker.datePickerMode = UIDatePickerModeDate;
        _datePicker.date = [NSDate date];
        _datePicker.frame = CGRectMake(0, 0, screen_bounds.size.width, 250);
    }
    return _datePicker;
}

- (UIToolbar *)toolBar {
    CGRect screen_bounds = [[UIScreen mainScreen] bounds];
    UIToolbar *toolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, screen_bounds.size.width, 40)];
    toolbar.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleWidth;
    UIBarButtonItem *itemDone  = [[UIBarButtonItem alloc]initWithTitle:@"确定   " style:UIBarButtonItemStylePlain target:self action:@selector(confirmAction:)];
    UIBarButtonItem *itemCancel = [[UIBarButtonItem alloc]initWithTitle:@"    取消" style:UIBarButtonItemStylePlain target:self action:@selector(hide)];
    UIBarButtonItem *space = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [toolbar setItems:[NSArray arrayWithObjects:itemCancel, space, itemDone, nil]];
    return toolbar;
}

@end
