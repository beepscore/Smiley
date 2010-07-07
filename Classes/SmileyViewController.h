//
//  SmileyViewController.h
//  Smiley
//
//  Created by Steve Baker on 3/5/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SmileyViewController : UIViewController {
    // Xcode automatically adds instance variables to back properties
}
#pragma mark properties
@property(nonatomic,retain)IBOutlet UIView *smileyView;
@property(nonatomic,retain)IBOutlet UIView *frownView;
@property(nonatomic, assign)BOOL wantSmileyView;

- (void)showSmileyView:(BOOL)wantSmiley;
- (IBAction)swingMood;

@end

