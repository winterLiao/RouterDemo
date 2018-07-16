//
//  TestViewController3.h
//  RouterDemo
//
//  Created by 廖文韬 on 2018/7/16.
//  Copyright © 2018年 廖文韬. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef  void(^btnClickBlock)(NSString *);

@interface TestViewController3 : UIViewController
@property (nonatomic, copy)btnClickBlock clicked;
@end
