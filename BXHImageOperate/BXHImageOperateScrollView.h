//
//  BXHScrollView.h
//  BXHImageScaleScrollView
//
//  Created by gg on 2017/11/27.
//  Copyright © 2017年 JayS. All rights reserved.
//

#import <UIKit/UIKit.h>

//宽度
#define SCREENW [UIScreen mainScreen].bounds.size.width

//高度
#define SCREENH [UIScreen mainScreen].bounds.size.height


@interface BXHImageOperateScrollView : UIScrollView<UIScrollViewDelegate>

@property (nonatomic,strong)UIImageView *imageView;

@end
