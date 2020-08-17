//
//  FirstTableViewCell.h
//  ViewTest
//
//  Created by Lizihao Li on 2020/8/17.
//  Copyright © 2020 Lizihao Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirstTableViewCell : UITableViewCell

@property (strong,nonatomic) UIImageView *userImageView;

@property (strong,nonatomic) UILabel *centerLabel;

- (void) updateOwnCellDisplay;

@end

NS_ASSUME_NONNULL_END
