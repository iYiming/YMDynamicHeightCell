//
//  ViewController.h
//  Test
//
//  Created by Yiming on 14/11/28.
//  Copyright (c) 2014年 Henizaiyiqi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

