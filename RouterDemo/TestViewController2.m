//
//  TestViewController2.m
//  RouterDemo
//
//  Created by 廖文韬 on 2018/7/11.
//  Copyright © 2018年 廖文韬. All rights reserved.
//

#import "TestViewController2.h"

@interface TestViewController2 ()

@end

@implementation TestViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"测试2";
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 300, 100)];
    label.text = self.labelText;
    [self.view addSubview:label];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
