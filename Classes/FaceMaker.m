//
//  FaceMaker.m
//  Smiley
//
//  Created by Steve Baker on 3/6/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import "FaceMaker.h"


@implementation FaceMaker


- (void)drawFaceWithColor:(UIColor *)aFaceColor {
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // build the path
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
    CGContextAddPath(ctx, path);
    
    // configure the fill parameters
    CGContextSetFillColorWithColor(ctx, aFaceColor.CGColor);
    
    // configure the stroke parameters
    CGContextSetStrokeColorWithColor(ctx, [UIColor blackColor].CGColor);
    CGContextSetLineWidth(ctx, 5.0f);
    
    // fill and stroke the path
    CGContextDrawPath (ctx, kCGPathFillStroke);
    
    CGPathRelease(path);
    // [aView drawSmile:faceCenter];
}



//- (void)drawFaceWithView:(UIView *)aView
//                  faceColor:(UIColor *)aFaceColor {
//    
////    CGMutablePathRef path = [aView CGPathCreateMutable()];
////    CGContextRef ctx = [aView UIGraphicsGetCurrentContext()];
//
//    // build the path
//    const CGAffineTransform *m = NULL;
//    CGPoint faceCenter;
//    faceCenter.x = 160.0f;
//    faceCenter.y = 200.0f;
//    const CGFloat faceRadius = 120.0f;
//    const CGFloat startAngle = 0.0f;
//    const CGFloat endAngle = 2.0f * M_PI;
//    bool clockwise = false;
//    
//    CGPathAddArc(path, m, faceCenter.x, faceCenter.y, 
//                 faceRadius, startAngle, endAngle, clockwise);    
//    
//    CGPathCloseSubpath(path);
//    CGContextAddPath(ctx, path);
//    
//    // configure the fill parameters
//    CGContextSetFillColorWithColor(ctx, aFaceColor.CGColor);
//    
//    // configure the stroke parameters
//    CGContextSetStrokeColorWithColor(ctx, [UIColor blackColor].CGColor);
//    CGContextSetLineWidth(ctx, 5.0f);
//    
//    // fill and stroke the path
//    CGContextDrawPath (ctx, kCGPathFillStroke);
//    
//    CGPathRelease(path);
//    // [aView drawSmile:faceCenter];
//}


- (void)drawFaceWithPathRef:(CGMutablePathRef)path
                 contextRef:(CGContextRef)ctx
                  faceColor:(UIColor *)aFaceColor {

    // build the path
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
    
    UIGraphicsPushContext(ctx);
    CGContextAddPath(ctx, path);
    
    // configure the fill parameters
    CGContextSetFillColorWithColor(ctx, aFaceColor.CGColor);
    
    // configure the stroke parameters
    CGContextSetStrokeColorWithColor(ctx, [UIColor blackColor].CGColor);
    CGContextSetLineWidth(ctx, 5.0f);
    
    // fill and stroke the path
    CGContextDrawPath (ctx, kCGPathFillStroke);
    
    // UIGraphicsPopContext;
    // [aView drawSmile:faceCenter];
}


//- (void)drawFaceWithPathRefPtr:(id *)&path
//                 contextRefPtr:(id *)&ctx
//                  faceColor:(UIColor *)aFaceColor {
//    
//    // build the path
//    const CGAffineTransform *m = NULL;
//    CGPoint faceCenter;
//    faceCenter.x = 160.0f;
//    faceCenter.y = 200.0f;
//    const CGFloat faceRadius = 120.0f;
//    const CGFloat startAngle = 0.0f;
//    const CGFloat endAngle = 2.0f * M_PI;
//    bool clockwise = false;
//    
//    CGPathAddArc(path, m, faceCenter.x, faceCenter.y, 
//                 faceRadius, startAngle, endAngle, clockwise);    
//    
//    CGPathCloseSubpath(path);
//    
//    UIGraphicsPushContext(ctx);
//    CGContextAddPath(ctx, path);
//    
//    // configure the fill parameters
//    CGContextSetFillColorWithColor(ctx, aFaceColor.CGColor);
//    
//    // configure the stroke parameters
//    CGContextSetStrokeColorWithColor(ctx, [UIColor blackColor].CGColor);
//    CGContextSetLineWidth(ctx, 5.0f);
//    
//    // fill and stroke the path
//    CGContextDrawPath (ctx, kCGPathFillStroke);
//    
//    UIGraphicsPopContext;
//    // [aView drawSmile:faceCenter];
//}


@end
