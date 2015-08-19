//
//  TGHomeTableViewController.m
//  收益购
//
//  Created by 汉森 on 15/8/18.
//  Copyright (c) 2015年 hansen. All rights reserved.
//

#import "TGHomeTableViewController.h"
#import "TGHomeHeaderView.h"

@interface TGHomeTableViewController ()
@property (nonatomic, weak) TGHomeHeaderView *homeHeader;
@end

@implementation TGHomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置tableView的背景颜色、取出分割线以及垂直滚动条
//    self.tableView.backgroundColor = TGColor(211, 211, 211);
//    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.showsVerticalScrollIndicator = NO;
    //设置导航栏
    [self setupNav];
    //设置tableView的headerView
    [self setupTableHeaderView];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(homeButtonDidClicked:) name:TGHomeButtonDidClicked object:nil];
}

-(void)homeButtonDidClicked:(NSNotification *)note{
    UIButton *clickedButton = note.userInfo[TGSelectedButton];
    TGLog(@"%@", clickedButton.titleLabel.text);
}

- (void)dealloc{
    
}

/**
 *  设置tableView的headerView
 */
-(void)setupTableHeaderView{
    CGFloat headerX = 0;
    CGFloat headerY = 0;
    CGFloat headerW = TGScreenW;
    CGFloat headerH = 196;
    CGRect rect = CGRectMake(headerX, headerY, headerW, headerH);
    TGHomeHeaderView *homeHeaderView = [[TGHomeHeaderView alloc] initWithFrame:rect];
//    homeHeaderView.backgroundColor = TGRandomColor;
    self.homeHeader = homeHeaderView;
    self.tableView.tableHeaderView = self.homeHeader;
}

/**
 *  设置导航栏
 */
-(void)setupNav{
    //设置导航栏图标
//    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigationbar_friendsearch" highlightedImageName:@"navigationbar_friendsearch_highlighted" target:self action:@selector(back)];
//    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigationbar_pop" highlightedImageName:@"navigationbar_pop_highlighted" target:self action:@selector(back)];
    
    //设置标题按钮
//    TGTitleButton *btn = [[TGTitleButton alloc] init];
//    btn.width = 100;
//    btn.height = 35;
//    [btn setImage:[UIImage imageWithName:@"navigationbar_arrow_down"] forState:UIControlStateNormal];
//    [btn setBackgroundImage:[UIImage resizedImage:@"navigationbar_filter_background_highlighted"] forState:UIControlStateHighlighted];
//    NSString *name = [TGAccountTool account].name;
//    [btn setTitle:name ? name : @"首页" forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    //高亮时不需要调整图片为灰色
//    btn.adjustsImageWhenHighlighted = NO;
//    [btn addTarget:self action:@selector(titleClicked:) forControlEvents:UIControlEventTouchUpInside];
//    self.navigationItem.titleView = btn;
//    self.titleButton = btn;
}

-(void)back{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    static NSString *identifier = @"ID";
    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    static NSString *ID = @"ID";
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    // Configure the cell...
    cell.textLabel.text = @"test";
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
