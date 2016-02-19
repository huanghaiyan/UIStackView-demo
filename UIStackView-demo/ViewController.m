//
//  ViewController.m
//  UIStackView-demo
//
//  Created by huanghy on 16/2/18.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //整体UIStackView
    UIStackView *stackView = [[UIStackView alloc]initWithFrame:CGRectMake(50, 50, 200, 50)];
    stackView.axis = UILayoutConstraintAxisHorizontal;
    stackView.spacing = 10;
    [self.view addSubview:stackView];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    imageView.image = [UIImage imageNamed:@"1"];
    [stackView addArrangedSubview:imageView];
    
    //子stackView
    UIStackView *stackViewSub = [[UIStackView alloc]initWithFrame:CGRectMake(50, 0, 150, 50)];
    stackViewSub.axis = UILayoutConstraintAxisVertical;
    stackViewSub.alignment = UIStackViewAlignmentLeading;
    stackViewSub.spacing = 10;
    UIImageView *imageView2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 38, 10)];
    imageView2.image = [UIImage imageNamed:@"2"];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 38, 5)];
    label.text = @"人均￥18";
    label.font = [UIFont systemFontOfSize:12.0];
    
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 150, 10)];
    label1.text = @"口味21环境21价格18";
    label1.font = [UIFont systemFontOfSize:10.0];

    [stackViewSub addArrangedSubview:imageView2];
    [stackViewSub addArrangedSubview:label];
    [stackViewSub addArrangedSubview:label1];
    
    [stackView addArrangedSubview:stackViewSub];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
