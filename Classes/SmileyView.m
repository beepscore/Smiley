//
//  SmileyView.m
//  Smiley
//
//  Created by Steve Baker on 3/5/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import "SmileyView.h"


@implementation SmileyView
#pragma mark properties
@synthesize faceMaker;


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
        faceMaker = [[FaceMaker alloc] init];
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGPoint faceCenter;
    faceCenter.x = 160.0f;
    faceCenter.y = 200.0f;
    
    [super drawBlankFaceAtCenter:(CGPoint)faceCenter
                      faceColor:[UIColor yellowColor]];
    
    [super drawEyeAtCenter:CGPointMake(faceCenter.x - 30.0f, faceCenter.y - 30.0f)
                fillColor:[UIColor blueColor]
              strokeColor:[UIColor blackColor]];
    
    [super drawEyeAtCenter:CGPointMake(faceCenter.x + 30.0f, faceCenter.y - 30.0f)
                fillColor:[UIColor blueColor]
              strokeColor:[UIColor blackColor]];    
    
    [super drawSmile:faceCenter];

    // Use helper class FaceMaker
    // didn't work
    //[self.faceMaker drawFaceWithColor:[UIColor yellowColor]];
    
    // didn't work
    //[self.faceMaker drawFaceWithView:self faceColor:[UIColor yellowColor]];

    // didn't work
    // create and build the path
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    [self.faceMaker drawFaceWithPathRef:path contextRef:ctx faceColor:[UIColor yellowColor]];
//    CGPathRelease(path);

}


- (void)dealloc {
    [faceMaker release], faceMaker = nil;
    [super dealloc];
}

@end
