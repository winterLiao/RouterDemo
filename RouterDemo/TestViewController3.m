//
//  TestViewController3.m
//  RouterDemo
//
//  Created by 廖文韬 on 2018/7/16.
//  Copyright © 2018年 廖文韬. All rights reserved.
//

#import "TestViewController3.h"

@interface TestViewController3 ()

@end

@implementation TestViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"测试3";
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 100)];
    btn.backgroundColor = [UIColor yellowColor];
    [btn addTarget:self action:@selector(blocked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}

- (void)blocked
{
    if (self.clicked){
        self.clicked(@"这个我也不太清楚");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
