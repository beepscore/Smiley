//
//  SmileyView.h
//  Smiley
//
//  Created by Steve Baker on 3/5/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FaceView.h"
#import "FaceMaker.h"


@interface SmileyView : FaceView {
    FaceMaker *faceMaker;
}

#pragma mark properties
@property(nonatomic,retain)FaceMaker *faceMaker;

@end
