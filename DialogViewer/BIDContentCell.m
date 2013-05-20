//
//  BIDContentCell.m
//  DialogViewer
//
//  Created by 李 潇磊 on 13-5-20.
//  Copyright (c) 2013年 李 潇磊. All rights reserved.
//

#import "BIDContentCell.h"

@implementation BIDContentCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.label = [[UILabel alloc] initWithFrame:self.contentView.bounds];
        self.label.opaque = NO;
        self.label.backgroundColor = [UIColor colorWithRed:0.6
                                                     green:0.2
                                                      blue:0.2
                                                     alpha:1.0];
        self.label.textColor = [UIColor whiteColor];
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.font =  [[self class] defaultFont];
        [self.contentView addSubview:self.label];
    }
    return self;
}

+ (UIFont *)defaultFont
{
    return [UIFont boldSystemFontOfSize:24];
}

+ (CGSize)sizeForContentString:(NSString *)s {
    CGSize textSize = [s sizeWithFont:[self defaultFont]
                    constrainedToSize:CGSizeMake(300, 1000)
                        lineBreakMode:NSLineBreakByCharWrapping];
    return textSize;
}

- (NSString *)text {
    return self.label.text;
}

- (void)setText:(NSString *)text {
    self.label.text = text;
    CGRect newLabelFrame = self.label.frame;
    CGRect newContentFrame = self.contentView.frame;
    CGSize textSize = [[self class] sizeForContentString:text];
    newLabelFrame.size = textSize;
    newContentFrame.size = textSize;
    self.label.frame = newLabelFrame;
    self.contentView.frame = newContentFrame;
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
