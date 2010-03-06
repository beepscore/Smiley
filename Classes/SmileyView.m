//
//  SmileyView.m
//  Smiley
//
//  Created by Steve Baker on 3/5/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import "SmileyView.h"


@implementation SmileyView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


- (void)drawSmile:(CGPoint)faceCenter {
    // create and build the path
    CGMutablePathRef path = CGPathCreateMutable();
    
    const CGAffineTransform *m = NULL;
    
    CGPoint smileCenter;
    smileCenter.x = faceCenter.x;
    smileCenter.y = faceCenter.y;
    const CGFloat smileRadius = 60.0f;
    const CGFloat startAngle = 0.1f * M_PI;
    const CGFloat endAngle = 0.9f * M_PI;
    bool clockwise = false;
    
    CGPathAddArc(path, m, smileCenter.x, smileCenter.y, 
                 smileRadius, startAngle, endAngle, clockwise);    
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddPath(ctx, path);
    
    // configure the stroke parameters
    CGContextSetStrokeColorWithColor(ctx, [UIColor blackColor].CGColor);
    CGContextSetLineWidth(ctx, 5.0f);    
    // stroke the path
    CGContextStrokePath(ctx);
    
    CGPathRelease(path);
}


- (void)drawSmileyFace {
    // create and build the path
    CGMutablePathRef path = CGPathCreateMutable();
    
    const CGAffineTransform *m = NULL;
    CGPoint faceCenter;
    faceCenter.x = 160.0f;
    faceCenter.y = 140.0f;
    const CGFloat faceRadius = 120.0f;
    const CGFloat startAngle = 0.0f;
    const CGFloat endAngle = 2.0f * M_PI;
    bool clockwise = false;
    
    CGPathAddArc(path, m, faceCenter.x, faceCenter.y, 
                 faceRadius, startAngle, endAngle, clockwise);    
    
    CGPathCloseSubpath(path);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddPath(ctx, path);
    
    // configure the fill parameters
    CGContextSetFillColorWithColor(ctx, [UIColor yellowColor].CGColor);
    
    // configure the stroke parameters
    CGContextSetStrokeColorWithColor(ctx, [UIColor blackColor].CGColor);
    CGContextSetLineWidth(ctx, 5.0f);
    
    // fill and stroke the path
    CGContextDrawPath (ctx, kCGPathFillStroke);
    
    CGPathRelease(path);
    [self drawSmile:faceCenter];
}


- (void)drawRect:(CGRect)rect {
    // Drawing code    
    [self drawSmileyFace];
}


- (void)dealloc {
    [super dealloc];
}


@end
