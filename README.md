# ZJCycyleScrollViewDemo
    //仿造别人的思路实现的一个图片轮播器，可加载网络图片，只需几行代码就可集成到自己的项目里
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
