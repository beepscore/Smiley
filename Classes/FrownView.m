//
//  FrownView.m
//  Smiley
//
//  Created by Steve Baker on 3/5/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import "FrownView.h"


@implementation FrownView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


- (void)drawFrown:(CGPoint)faceCenter {
    // create and build the path
    CGMutablePathRef path = CGPathCreateMutable();
    
    const CGAffineTransform *m = NULL;
    
    CGPoint frownCenter;
    frownCenter.x = faceCenter.x;
    frownCenter.y = faceCenter.y + 60.0f;
    const CGFloat frownRadius = 60.0f;
    const CGFloat startAngle = 1.1f * M_PI;
    const CGFloat endAngle = 1.9f * M_PI;
    bool clockwise = false;
    
    CGPathAddArc(path, m, frownCenter.x, frownCenter.y, 
                 frownRadius, startAngle, endAngle, clockwise);    
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddPath(ctx, path);
    
    // configure the stroke parameters
    CGContextSetStrokeColorWithColor(ctx, [UIColor blackColor].CGColor);
    CGContextSetLineWidth(ctx, 5.0f);
    // stroke the path
    CGContextStrokePath(ctx);
    
    CGPathRelease(path);
}


- (void)drawFrownFace {
    // create and build the path
    CGMutablePathRef path = CGPathCreateMutable();
    
    const CGAffineTransform *m = NULL;
    CGPoint faceCenter;
    faceCenter.x = 160.0f;
    faceCenter.y = 200.0f;
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
    CGContextSetFillColorWithColor(ctx, [UIColor purpleColor].CGColor);
    
    // configure the stroke parameters
    CGContextSetStrokeColorWithColor(ctx, [UIColor blackColor].CGColor);
    CGContextSetLineWidth(ctx, 5.0f);
    
    // fill and stroke the path
    CGContextDrawPath (ctx, kCGPathFillStroke);
    
    CGPathRelease(path);
    [self drawFrown:faceCenter];
}


- (void)drawRect:(CGRect)rect {
    // Drawing code    
    [self drawFrownFace];
}


- (void)dealloc {
    [super dealloc];
}


@end
