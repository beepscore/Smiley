//
//  FaceMaker.h
//  Smiley
//
//  Created by Steve Baker on 3/6/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>


@interface FaceMaker : NSObject {
    
}

- (void)drawFaceWithColor:(UIColor *)aFaceColor;


//- (void)drawFaceWithView:(UIView *)aView
//               faceColor:(UIColor *)aFaceColor;

// The suffix Ref means the type is a pointer
- (void)drawFaceWithPathRef:(CGMutablePathRef)path
                 contextRef:(CGContextRef)ctx
                  faceColor:(UIColor *)aFaceColor;


//- (void)drawFaceWithPathRefPtr:(id *)&path
//contextRefPtr:(id *)&ctx
//faceColor:(UIColor *)aFaceColor;    

@end
