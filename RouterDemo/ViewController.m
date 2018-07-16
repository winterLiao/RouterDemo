//
//  ViewController.m
//  RouterDemo
//
//  Created by 廖文韬 on 2018/7/11.
//  Copyright © 2018年 廖文韬. All rights reserved.
//

#import "ViewController.h"
#import "MGJRouter.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pushTest1ModuleAction:(id)sender {
    [MGJRouter openURL:@"LWT://Test1/PushMainVC"
          withUserInfo:@{@"navigationVC" : self.navigationController,
                         }
            completion:nil];

}

- (IBAction)pushTest2ModuleAction:(id)sender {
    [MGJRouter openURL:@"LWT://Test2/PushMainVC"
          withUserInfo:@{@"navigationVC" : self.navigationController,
                         @"text": @"爱就像蓝天白云晴空万里",
                         }
            completion:nil];
}
- (IBAction)pushTest3ModuleAction:(id)sender {
    [MGJRouter openURL:@"LWT://Test3/PushMainVC"
          withUserInfo:@{@"navigationVC" : self.navigationController,
                         @"block":^(NSString * text){
                                    NSLog(@"%@",text);
                                },
                        }
            completion:nil];
}

- (IBAction)objectTestAction:(id)sender {
    [self.navigationController pushViewController:[MGJRouter objectForURL:@"LWT://Test2/getMainVC" withUserInfo:@{@"text" : @"我知道我对你不仅仅是喜欢",}] animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
