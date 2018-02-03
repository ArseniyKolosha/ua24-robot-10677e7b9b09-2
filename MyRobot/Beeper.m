//
//  Beeper.m
//  Karel
//
//  Created by Ivan Vasilevich on 2/27/14.
//  Copyright (c) 2014 Ivan Vasilevich. All rights reserved.
//

#import "Beeper.h"

@implementation Beeper

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setNeedsDisplay];
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)awakeFromNib{
    [super awakeFromNib];
    [self setNeedsDisplay];
    self.backgroundColor = [UIColor clearColor];
}

- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [path moveToPoint:CGPointMake(0 + 2, self.frame.size.height/2)];
    [path addLineToPoint:CGPointMake(self.frame.size.width/2, 0 + 2)];
    [path addLineToPoint:CGPointMake(self.frame.size.width - 2, self.frame.size.height/2)];
    [path addLineToPoint:CGPointMake(self.frame.size.width/2, self.frame.size.height - 2)];
    [path closePath];
    path.lineWidth *= 2;
    [[UIColor blackColor] setStroke];
    [[UIColor grayColor] setFill];
    [path stroke];
    [path fill];

}


@end
