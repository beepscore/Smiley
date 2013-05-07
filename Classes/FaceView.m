//
//  FaceView.m
//  Smiley
//
//  Created by Steve Baker on 3/7/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import "FaceView.h"


@implementation FaceView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


#pragma mark -
#pragma mark Memory management methods


#pragma mark -
#pragma mark Drawing methods
- (void)drawRect:(CGRect)rect {
    // Drawing code
}


- (void)drawCircleAtCenter:(CGPoint)circleCenter
                    radius:(CGFloat)circleRadius
               strokeWidth:(CGFloat)strokeWidth 
                 fillColor:(UIColor *)fillColor
               strokeColor:(UIColor *)strokeColor {
    
    // create and build the path
    CGMutablePathRef path = CGPathCreateMutable();
    
    const CGAffineTransform *m = NULL;
    const CGFloat startAngle = 0.0f;
    const CGFloat endAngle = 2.0f * M_PI;
    bool clockwise = false;
    
    CGPathAddArc(path, m, circleCenter.x, circleCenter.y, 
                 circleRadius, startAngle, endAngle, clockwise);    
    
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextAddPath(contextRef, path);
    
    // configure the fill parameters
    CGContextSetFillColorWithColor(contextRef, fillColor.CGColor);
    
    // configure the stroke parameters
    CGContextSetStrokeColorWithColor(contextRef, strokeColor.CGColor);
    CGContextSetLineWidth(contextRef, strokeWidth);
    
    // fill and stroke the path
    CGContextDrawPath (contextRef, kCGPathFillStroke);
    
    CGPathRelease(path);
}


- (void)drawBlankFaceAtCenter:(CGPoint)faceCenter
                    faceColor:(UIColor *)faceColor {
    
    [self drawCircleAtCenter:faceCenter
                      radius:120.0f
                 strokeWidth:6.0f 
                   fillColor:faceColor
                 strokeColor:[UIColor blackColor]];
}


- (void)drawIrisAtCenter:(CGPoint)eyeCenter
               fillColor:(UIColor *)irisColor
             strokeColor:(UIColor *)strokeColor {
    
    [self drawCircleAtCenter:eyeCenter
                      radius:15.0f
                 strokeWidth:4.0f 
                   fillColor:irisColor
                 strokeColor:strokeColor];
}


- (void)drawPupilAtCenter:(CGPoint)pupilCenter {
    
    [self drawCircleAtCenter:pupilCenter
                      radius:6.0f
                 strokeWidth:1.0f 
                   fillColor:[UIColor blackColor]
                 strokeColor:[UIColor blackColor]];
}


- (void)drawEyeAtCenter:(CGPoint)eyeCenter
               fillColor:(UIColor *)irisColor
             strokeColor:(UIColor *)strokeColor {
    
    [self drawIrisAtCenter:(CGPoint)eyeCenter
                fillColor:(UIColor *)irisColor
               strokeColor:(UIColor *)strokeColor];
    
    [self drawPupilAtCenter:eyeCenter];
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
    CGContextSetLineWidth(ctx, 8.0f);    
    // stroke the path
    CGContextStrokePath(ctx);
    
    CGPathRelease(path);
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
    CGContextSetLineWidth(ctx, 8.0f);
    // stroke the path
    CGContextStrokePath(ctx);
    
    CGPathRelease(path);
}

@end
