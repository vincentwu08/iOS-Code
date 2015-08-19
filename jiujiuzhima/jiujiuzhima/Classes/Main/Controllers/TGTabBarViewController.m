//
//  TGTabBarViewController.m
//  微博
//
//  Created by 汉森 on 15/7/5.
//  Copyright (c) 2015年 hansen. All rights reserved.
//

#import "TGTabBarViewController.h"
#import "TGHomeTableViewController.h"
#import "TGSecondTableViewController.h"
#import "TGThirdTableViewController.h"
#import "TGNavigationController.h"

@interface TGTabBarViewController ()
@property (nonatomic, weak) TGHomeTableViewController *home;
@property (nonatomic, weak) TGSecondTableViewController *second;
@property (nonatomic, weak) TGThirdTableViewController *third;
@end

@implementation TGTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupAllChildViewControllers];
    
//    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(getUnreadCount) userInfo:nil repeats:YES];
//    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
}

-(void)setupAllChildViewControllers{
    TGHomeTableViewController *home = [[TGHomeTableViewController alloc] init];
    [self addOneChildVc:home title:@"首页" imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
    self.home = home;
    
    TGSecondTableViewController *second = [[TGSecondTableViewController alloc] init];
    [self addOneChildVc:second title:@"收益购" imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
    self.second = second;
    
    TGThirdTableViewController *third = [[TGThirdTableViewController alloc] init];
    [self addOneChildVc:third title:@"我" imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
    self.third = third;
//    self.tabBar.tintColor = [UIColor blueColor];
//    self.tabBar.selectionIndicatorImage = [UIImage imageWithName:@"navigationbar_button_background"];
//    // 调整tabbar
//    TGTabBar *customTabBar = [[TGTabBar alloc] init];
//    if ( !iOS7 ) {
//        customTabBar.backgroundImage = [UIImage imageWithName:@"tabbar_background"];
//        customTabBar.selectionIndicatorImage = [UIImage imageWithName:@"navigationbar_button_background"];
//    }
//    
//    customTabBar.tabBarDelegate = (id)self;
//    
//    //更换系统自带的tabbar
//    [self setValue:customTabBar forKeyPath:@"tabBar"];
    
    // 设置代理（监听控制器的切换， 控制器一旦切换了子控制器，就会调用代理的tabBarController:didSelectViewController:）
    self.delegate = (id)self;

}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    // 强制重新布局子控件（内部会调用layouSubviews）
    [self.tabBar setNeedsLayout];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  添加一个子控制器
 *
 *  @param childVc           子控制器对象
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)addOneChildVc:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
//    childVc.view.backgroundColor = TGRandomColor;
    // 设置标题
    childVc.title = title;
    // 设置图标
    childVc.tabBarItem.image = [UIImage imageWithName:imageName];
    // 设置选中的图标
    UIImage *selectedImage = [UIImage imageWithName:selectedImageName];
    if ( iOS7 ) {
        // 声明这张图片用原图(别渲染)
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    childVc.tabBarItem.selectedImage = selectedImage;
    
    // 添加为tabbar控制器的子控制器
    TGNavigationController *Vc = [[TGNavigationController alloc] initWithRootViewController:childVc];
    
    [self addChildViewController:Vc];
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
