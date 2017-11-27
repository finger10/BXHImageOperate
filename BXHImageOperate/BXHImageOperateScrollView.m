//
//  BXHScrollView.m
//  BXHImageScaleScrollView
//
//  Created by gg on 2017/11/27.
//  Copyright © 2017年 JayS. All rights reserved.
//

#import "BXHImageOperateScrollView.h"



@implementation BXHImageOperateScrollView

- (instancetype)initWithFrame:(CGRect)frame 
{
    self = [super initWithFrame:frame];
    if(self){
        
        self.bouncesZoom = YES;
        //设置最大缩放比例
        self.maximumZoomScale = 3;
        
        //垂直
        self.showsVerticalScrollIndicator = NO;
        //水平
        self.showsHorizontalScrollIndicator = NO;
        
        self.delegate = self;
        self.userInteractionEnabled = YES;
        self.multipleTouchEnabled = YES;
        
        self.imageView = [[UIImageView alloc] init];
        self.imageView.frame = CGRectMake( 0, 0, SCREENW, SCREENH);
        self.imageView.contentMode = UIViewContentModeScaleAspectFill;
//        _imageView.image = [UIImage imageNamed:@"good.jpg"];
        self.imageView.clipsToBounds = YES;
        [self addSubview:self.imageView];
 
        
    };
    return self;
}

#pragma mark - ScrollViewDelegate


- (void)scrollViewDidZoom:(UIScrollView *)scrollView {
    
    CGFloat offsetX = (scrollView.bounds.size.width > scrollView.contentSize.width)?
    (scrollView.bounds.size.width - scrollView.contentSize.width) * 0.5 : 0.0;

    NSLog(@"offsetX:%f",offsetX);

    CGFloat offsetY = (scrollView.bounds.size.height > scrollView.contentSize.height)?
    (scrollView.bounds.size.height - scrollView.contentSize.height) * 0.5 : 0.0;



    //key。每次比例完后 修正 imageView的中心坐标
    self.imageView.center = CGPointMake(scrollView.contentSize.width * 0.5 + offsetX,
                                    scrollView.contentSize.height * 0.5 + offsetY);
    
}

//
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
        return self.imageView;
}


@end
