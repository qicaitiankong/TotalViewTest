//
//  FirstTableViewCell.m
//  ViewTest
//
//  Created by Lizihao Li on 2020/8/17.
//  Copyright © 2020 Lizihao Li. All rights reserved.
//

#import "FirstTableViewCell.h"
#import <Masonry.h>

@implementation FirstTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.contentView.backgroundColor = [UIColor redColor];
        [self addImageCorner];
        [self.contentView addSubview:self.userImageView];
        
        self.centerLabel.backgroundColor = [UIColor whiteColor];
        self.centerLabel.font = [UIFont systemFontOfSize:16];
        //self.centerLabel.preferredMaxLayoutWidth = ([UIScreen mainScreen].bounds.size.width - 10 * 2 - 50 - 10);
        self.centerLabel.numberOfLines = 0;
       // [self.centerLabel setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
        [self.contentView addSubview:self.centerLabel];
        
        [self.userImageView mas_makeConstraints:^(MASConstraintMaker *make)
        {
            make.top.mas_equalTo(self.contentView).mas_offset(10);
            make.left.mas_equalTo(self.contentView).mas_offset(10);
            make.width.height.mas_equalTo(50);
            make.bottom.mas_equalTo(self.contentView).mas_offset(-10);
        }];
        
        [self.centerLabel mas_makeConstraints:^(MASConstraintMaker *make)
        {
            make.left.mas_equalTo(self.userImageView.mas_right).mas_offset(10);
            make.right.mas_equalTo(self.contentView.mas_right).mas_offset(-10);
            //make.centerY.mas_equalTo(self.userImageView);
            make.top.mas_equalTo(self.userImageView);
            make.bottom.mas_equalTo(self.contentView).mas_offset(-20);
        }];
        
    }
    return self;
}

- (void) updateOwnCellDisplay
{
    [self.centerLabel mas_updateConstraints:^(MASConstraintMaker *make)
          {
              make.left.mas_equalTo(self.userImageView.mas_right).mas_offset(10);
              make.right.mas_equalTo(self.contentView.mas_right).mas_offset(-10);
              make.top.mas_equalTo(self.userImageView);
              make.bottom.mas_equalTo(self.contentView).mas_offset(-20);
          }];
}

- (void)addImageCorner
{
    self.userImageView.backgroundColor = [UIColor whiteColor];
    self.userImageView.frame = CGRectMake(0, 0, 50, 50);
    self.userImageView.image = [UIImage imageNamed:@"dogFoot"];
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.userImageView.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:self.userImageView.bounds.size];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
    maskLayer.frame = self.imageView.bounds;
    //设置形状
    maskLayer.path = maskPath.CGPath;
    self.userImageView.layer.mask = maskLayer;
}

-(UIImageView *)userImageView
{
    if (_userImageView == nil)
    {
        _userImageView = [[UIImageView alloc]init];
    }
    return _userImageView;;
}

-(UILabel *)centerLabel
{
    if (_centerLabel == nil)
    {
        _centerLabel = [[UILabel alloc]init];
    }
    return _centerLabel;
}


@end
