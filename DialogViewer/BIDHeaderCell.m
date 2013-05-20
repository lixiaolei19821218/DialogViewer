//
//  BIDHeaderCell.m
//  DialogViewer
//
//  Created by 李 潇磊 on 13-5-20.
//  Copyright (c) 2013年 李 潇磊. All rights reserved.
//

#import "BIDHeaderCell.h"

@implementation BIDHeaderCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.label.backgroundColor = [UIColor yellowColor];
        self.label.textColor = [UIColor blackColor];
    }
    return self;
}

+ (UIFont *)defaultFont {
    return [UIFont systemFontOfSize:17];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
