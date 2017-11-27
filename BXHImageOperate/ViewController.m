//
//  ViewController.m
//  BXHImageOperate
//
//  Created by gg on 2017/11/27.
//  Copyright © 2017年 JayS. All rights reserved.
//

#import "ViewController.h"
#import "BXHImageOperateScrollView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BXHImageOperateScrollView *operateSV = [BXHImageOperateScrollView new];
    operateSV.frame = CGRectMake(0, 0, SCREENW, SCREENH);
    operateSV.imageView.image = [UIImage imageNamed:@"zoomScaleImage.jpg"];
    [self.view addSubview:operateSV];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
