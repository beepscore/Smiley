//
//  SmileyViewController.m
//  Smiley
//
//  Created by Steve Baker on 3/5/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import "SmileyViewController.h"

@interface SmileyViewController ()
@property(nonatomic,strong)IBOutlet UIView *smileyView;
@property(nonatomic,strong)IBOutlet UIView *frownView;
@property(nonatomic, assign)BOOL wantSmileyView;

- (void)showSmileyView:(BOOL)wantSmiley;
- (IBAction)swingMood;
@end

@implementation SmileyViewController

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    self.wantSmileyView = YES;
    [self showSmileyView:self.wantSmileyView];
}


#pragma mark - Memory management methods
- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}


#pragma mark - animation
- (void)showSmileyView:(BOOL)wantSmiley {
    
    if (! wantSmiley) {
        NSLog(@"show frown");
        self.frownView.center = CGPointMake(0.5f * self.view.bounds.size.width,
                                            0.42f * self.view.bounds.size.height);
        self.smileyView.center = CGPointMake(-1.5f * self.view.bounds.size.width,
                                             0.42f * self.view.bounds.size.height);
    } else {
        NSLog(@"show smile");
        self.frownView.center = CGPointMake(1.5f * self.view.bounds.size.width,
                                            0.42f * self.view.bounds.size.height);
        self.smileyView.center = CGPointMake(0.5f * self.view.bounds.size.width,
                                             0.42f * self.view.bounds.size.height);
    }
}


- (IBAction)swingMood {
    self.wantSmileyView = ! self.wantSmileyView;
    [UIView beginAnimations:@"movement" context:nil];
    [self showSmileyView:self.wantSmileyView];
    [UIView commitAnimations];
}

@end
