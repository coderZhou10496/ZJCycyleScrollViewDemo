//
//  ViewController.m
//  ZJCycyleScrollViewDemo
//
//  Created by ZJ on 16/3/17.
//  Copyright © 2016年 ZJ. All rights reserved.
//

#import "ViewController.h"
#import "ZJCycleScrollView.h"
@interface ViewController ()<ZJCycleScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    /*
    //加载本地图片
    NSArray *imageArray = @[[UIImage imageNamed:@"1.jpg"],
                        [UIImage imageNamed:@"2.jpg"],
                        [UIImage imageNamed:@"3.jpg"],
                        ];
    ZJCycleScrollView *scrollView = [[ZJCycleScrollView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 200) imagesGroup:imageArray];
    scrollView.delegate = self;
    scrollView.scrollTimeinterval = 3;
    scrollView.showPageControl = YES;
    scrollView.pageControlAlignment = ZJCycleScrollViewPageControlAlignmentCenter;
    [self.view addSubview:scrollView];
   */
    
    
    //加载网络图片
    NSArray *imagesURLStrings = @[
                                  @"http://res1.gipower.cn/scb/ad/hailiao/banner.jpg",
                                  @"http://res1.gipower.cn/scb/ad/bwjy/banner.jpg",
                                  @"http://res1.gipower.cn/scb/ad/hycs/banner.jpg"
                                  ];
    
    ZJCycleScrollView *scrollView = [[ZJCycleScrollView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 200) urlStringGroup:imagesURLStrings placeholderImage:[UIImage imageNamed:@"placeholder"]];
    scrollView.delegate = self;
    scrollView.scrollTimeinterval = 1;
    scrollView.showPageControl = YES;
    [self.view addSubview:scrollView];
    
}
-(void)scrollView:(ZJCycleScrollView *)scrollView didSelectItemAtIndex:(int)index
{
    NSLog(@"你点击了第%d个图片",index);
}
@end
