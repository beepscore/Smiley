//
//  SmileyViewController.h
//  Smiley
//
//  Created by Steve Baker on 3/5/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SmileyViewController : UIViewController {
}

#pragma mark properties
@property(nonatomic,strong)IBOutlet UIView *smileyView;
@property(nonatomic,strong)IBOutlet UIView *frownView;
@property(nonatomic, assign)BOOL wantSmileyView;

- (void)showSmileyView:(BOOL)wantSmiley;
- (IBAction)swingMood;

@end

