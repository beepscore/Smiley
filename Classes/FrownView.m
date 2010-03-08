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


- (void)drawRect:(CGRect)rect {
    // Drawing code    

    CGPoint faceCenter;
    faceCenter.x = 160.0f;
    faceCenter.y = 200.0f;
    
    [self drawBlankFaceAtCenter:(CGPoint)faceCenter
                      faceColor:[UIColor purpleColor]];
    
    [self drawEyeAtCenter:CGPointMake(faceCenter.x - 30.0f, faceCenter.y - 30.0f)
                fillColor:[UIColor blueColor]
              strokeColor:[UIColor blackColor]];
    
    [self drawEyeAtCenter:CGPointMake(faceCenter.x + 30.0f, faceCenter.y - 30.0f)
                fillColor:[UIColor blueColor]
              strokeColor:[UIColor blackColor]];    
    
    [self drawFrown:faceCenter];
}


- (void)dealloc {
    [super dealloc];
}

@end
