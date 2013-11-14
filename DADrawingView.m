//
//  DADrawingView.m
//  DrawingApp
//
//  Created by user on 11/14/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import "DADrawingView.h"

@implementation DADrawingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
-(void)drawRect:(CGRect) rect
{
    CGContextRef context =  UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 4.0);
    CGContextSetStrokeColorWithColor(context, [[UIColor blueColor] CGColor]);
    CGContextMoveToPoint(context, 50, 50);
    
     CGContextAddLineToPoint(context, 300, 400);
    CGContextStrokePath(context);
    
    CGContextSetStrokeColorWithColor(context, [[UIColor redColor] CGColor]);
    
    CGRect rectangle = CGRectMake(60, 170, 200, 80);
    CGContextAddRect(context, rectangle);
       CGContextAddEllipseInRect(context, rectangle);
    CGContextStrokePath(context);
    
}

@end
