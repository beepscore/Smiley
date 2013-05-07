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


- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGPoint faceCenter;
    faceCenter.x = self.bounds.size.width / 2.0f;
    faceCenter.y = self.bounds.size.height / 2.0f;
    
    [super drawBlankFaceAtCenter:(CGPoint)faceCenter
                       faceColor:[UIColor yellowColor]];
    
    [super drawEyeAtCenter:CGPointMake(faceCenter.x - 30.0f, faceCenter.y - 30.0f)
                 fillColor:[UIColor blueColor]
               strokeColor:[UIColor blackColor]];
    
    [super drawEyeAtCenter:CGPointMake(faceCenter.x + 30.0f, faceCenter.y - 30.0f)
                 fillColor:[UIColor blueColor]
               strokeColor:[UIColor blackColor]];
    
    [super drawSmile:faceCenter];
}



@end
