//
//  ViewController.m
//  Test
//
//  Created by Yiming on 14/11/28.
//  Copyright (c) 2014年 Henizaiyiqi. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import "PersonInfo.h"

@interface ViewController ()
{
    NSMutableArray *personsArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // branch hello
    
    personsArray = [[NSMutableArray alloc] init];
    
    PersonInfo *p1 = [[PersonInfo alloc] init];
    p1.name = @"Tom";
    p1.place = @"北京 朝阳";
    p1.introduction = @"叫司机上地附近司法局上地附近的司法局上地附近上地附近时地方接收到封ID健";
    [personsArray addObject:p1];
    
    
    PersonInfo *p2 = [[PersonInfo alloc] init];
    p2.name = @"Jerry";
    p2.place = @"山西 太原";
    p2.introduction = @"叫司机上";
    [personsArray addObject:p2];
    
    PersonInfo *p3 = [[PersonInfo alloc] init];
    p3.name = @"Sam";
    p3.place = @"河北 石家庄";
    p3.introduction = @"叫司机上地附近司法局上地附近的司法局上地附近上地附近时地方接收到封ID健身房IDS解放地上飞机飞机的司法sfsdffss交多少覅圣诞节是打飞机就发生地方就司法局司法";
    [personsArray addObject:p3];
    
    
    PersonInfo *p4 = [[PersonInfo alloc] init];
    p4.name = @"Mike";
    p4.place = @"江苏 南京";
    p4.introduction = @"哈哈哈哈";
    [personsArray addObject:p4];
    
    PersonInfo *p5 = [[PersonInfo alloc] init];
    p5.name = @"Nike";
    p5.place = @"北京 丰台";
    p5.introduction = @"由于使用 Cocoa 框架能够快速地创建一个可用的应用，这让许多开发者都喜欢上了 OS X 或 iOS 开发。如今即使是小团队也能设计和开发复杂的应用，这很大程度上要归功于这些平台所提供的工具和框架。Swift 的 Playground 不仅继承了快速开发的传统，并且有改变我们设计和编写 OS X 和 iOS 应用方式的潜力。";
    [personsArray addObject:p5];
    
    PersonInfo *p6 = [[PersonInfo alloc] init];
    p6.name = @"Jim";
    p6.place = @"北京 丰台";
    p6.introduction = @"由于使用 Cocoa 框架能够快速地创建一个可用的应用，这让许多开发者都喜欢上了 OS X 或 iOS 开发。如今即使是小团队也能设计和开发复杂的应用，这很大程度上要归功于这些平台所提供的工具和框架。Swift 的 Playground 不仅继承了快速开发的传统，并且有改变我们设计和编写 OS X 和 iOS 应用方式的潜力。向那些还不熟悉这个概念的读者解释一下，Swift 的 playground 就像是一个可交互的文档，在其中你可以输入 Swift 代码让它们立即编译执行。操作结果随着执行的时间线一步步被展示，开发者能在任何时候输出和监视变量。Playground 既可以在现有的 Xcode 工程中进行创建，也能作为单独的包存在。Swift 的 playground 主要还是作为学习这门语言的工具而被重视，然而我们只要关注一下类似项目，如 IPython notebooks，就能看到交互编程环境在更广阔的范围内的潜在应用。从科学研究到机器视觉实验，这些任务现在都使用了 IPython notebooks。这种方式也被用来探索其他语言的范例，如 Haskell 的函数式编程。接下来我们将探索 Swift 的 playground 在文档、测试和快速原型方面的用途。本文使用的所有 Swift playground 源码可以在这里下载。";
    [personsArray addObject:p6];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CustomCell *)cellForIndexPath:(NSIndexPath *) indexPath {
    CustomCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"CustomCell"];
    
    
    PersonInfo *personInfo = [personsArray objectAtIndex:indexPath.row];
    cell.nameLabel.text =  personInfo.name;
    cell.placeLabel.text = personInfo.place;
    cell.introductionLabel.text = personInfo.introduction;
    
    return cell;
}


#pragma mark -
#pragma mark -UITableViewDataSource UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return personsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell" forIndexPath:indexPath];
    
    PersonInfo *personInfo = [personsArray objectAtIndex:indexPath.row];
    cell.photoImageView.image = [UIImage imageNamed:@"photo.jpg"];
    cell.nameLabel.text =  personInfo.name;
    cell.placeLabel.text = personInfo.place;
    cell.introductionLabel.text = personInfo.introduction;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self cellForIndexPath:indexPath];
    CGSize size = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    
   NSLog(@"%@",@(size.height + 1));
   return size.height + 1;
}


@end
