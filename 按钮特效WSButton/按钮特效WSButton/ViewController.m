//
//  ViewController.m
//  按钮特效WSButton
//
//  Created by iMac on 16/8/25.
//  Copyright © 2016年 sinfotek. All rights reserved.
//

#import "ViewController.h"
#import "WSTextField.h"
#import "WSButton.h"
#import "PresentController.h"


#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    //背景渐变
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.view.bounds;
    gradientLayer.colors = @[(__bridge id)[UIColor greenColor].CGColor,(__bridge id)[UIColor redColor].CGColor];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(0, 1);
    gradientLayer.locations = @[@0,@1];
    [self.view.layer addSublayer:gradientLayer];
    
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
    [self setUp];
}


-(void)viewDidDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.view.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj removeFromSuperview];
    }];
}

-(void)setUp{
    
    UILabel *titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 50)];
    titleLabel.center = CGPointMake(self.view.center.x, 150);
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.text = @"Zws-China";
    titleLabel.font = [UIFont systemFontOfSize:40.f];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
    
    //WS输入框
    WSTextField *username = [[WSTextField alloc]initWithFrame:CGRectMake(30, kScreenHeight/2, kScreenWidth-60, 30)];
    username.ly_placeholder = @"Username";
    [self.view addSubview:username];
    
    WSTextField *password = [[WSTextField alloc]initWithFrame:CGRectMake(30, CGRectGetMaxY(username.frame)+20, kScreenWidth-60, 30)];
    password.textField.secureTextEntry = YES;
    password.ly_placeholder = @"Password";
    [self.view addSubview:password];
    
    
    
    //WS按钮
    WSButton *wsBtn = [[WSButton alloc]initWithFrame:CGRectMake( 30, CGRectGetMaxY(password.frame)+40, kScreenWidth - 60, 40)];
    [self.view addSubview:wsBtn];
   

    wsBtn.translateBlock = ^{
        NSLog(@"按钮事件");
        
        sleep(2);
        //跳转
        PresentController *preCtrl = [[PresentController alloc]init];
        [self presentViewController:preCtrl animated:YES completion:nil];
    };
    
}











@end
