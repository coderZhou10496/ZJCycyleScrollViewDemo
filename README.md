# ZJCycyleScrollViewDemo
    //快速集成，简单好用
    ZJCycleScrollView *scrollView = [[ZJCycleScrollView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 200) imagesGroup:imageArray];
    //网络图片为：ZJCycleScrollView *scrollView = [[ZJCycleScrollView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 200) urlStringGroup:imagesURLStrings placeholderImage:[UIImage imageNamed:@"placeholder"]];
    scrollView.delegate = self;
    scrollView.scrollTimeinterval = 3;
    scrollView.showPageControl = YES;
    scrollView.pageControlAlignment = ZJCycleScrollViewPageControlAlignmentCenter;
    [self.view addSubview:scrollView];
    
    
   //回调代理
   -(void)scrollView:(ZJCycleScrollView *)scrollView didSelectItemAtIndex:(int)index
   {
   NSLog(@"你点击了第%d个图片",index);
   }
