//
//  CustomCell.h
//  Test
//
//  Created by Yiming on 14/11/28.
//  Copyright (c) 2014年 Henizaiyiqi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *placeLabel;
@property (weak, nonatomic) IBOutlet UILabel *introductionLabel;

@end
