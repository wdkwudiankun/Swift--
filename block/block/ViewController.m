//
//  ViewController.m
//  block
//
//  Created by DiankunWu on 16/5/17.
//  Copyright © 2016年 DiankunWu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadData1:^{
        NSLog(@"loadData1 执行");
    }];
    
    [self loadData2:@"diankun" finished:^{
        NSLog(@"loadData2 执行");
    }];
}


-(void)loadData1:(void(^)())finished{

    NSLog(@"loadData1");
    finished();

}

-(void)loadData2:(NSString *)name finished:(void(^)())finished{

    NSLog(@"name = %@",name);
    finished();
    
}



@end
