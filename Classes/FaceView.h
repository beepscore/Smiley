//
//  FaceView.h
//  Smiley
//
//  Created by Steve Baker on 3/7/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FaceView : UIView {

}

- (void)drawCircleAtCenter:(CGPoint)circleCenter
                    radius:(CGFloat)circleRadius
               strokeWidth:(CGFloat)strokeWidth 
                 fillColor:(UIColor *)fillColor
               strokeColor:(UIColor *)strokeColor;

- (void)drawBlankFaceAtCenter:(CGPoint)faceCenter
                    faceColor:(UIColor *)faceColor;

- (void)drawEyeAtCenter:(CGPoint)eyeCenter
              fillColor:(UIColor *)irisColor
            strokeColor:(UIColor *)strokeColor;    

- (void)drawSmile:(CGPoint)faceCenter;

- (void)drawFrown:(CGPoint)faceCenter;

@end
