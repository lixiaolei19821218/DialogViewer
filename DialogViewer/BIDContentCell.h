//
//  BIDContentCell.h
//  DialogViewer
//
//  Created by 李 潇磊 on 13-5-20.
//  Copyright (c) 2013年 李 潇磊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDContentCell : UICollectionViewCell

@property (strong, nonatomic) UILabel *label;
@property (copy, nonatomic) NSString *text;

+ (CGSize)sizeForContentString:(NSString *)s;

@end
