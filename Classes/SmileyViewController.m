//
//  SmileyViewController.m
//  Smiley
//
//  Created by Steve Baker on 3/5/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import "SmileyViewController.h"

@implementation SmileyViewController

#pragma mark properties
@synthesize smileyView;
@synthesize frownView;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

#pragma mark Memory management methods
- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

// set properties to nil, which also releases them
- (void)setView:(UIView *)newView {
    if (nil == newView) {
        self.smileyView = nil;
        self.frownView = nil;
    }    
    [super setView:newView];
}


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [smileyView release], smileyView = nil;
    [frownView release], frownView = nil;

    [super dealloc];
}


#pragma mark -
#pragma mark animation
- (IBAction)swingMood {
    [UIView beginAnimations:@"movement" context:nil];
    self.frownView.center = CGPointMake(200.0f, 200.0f);    
    self.smileyView.center = CGPointMake(440.0f, 200.0f);
    [UIView commitAnimations];
    
    // TODO:  need to redraw frown
    //[self.frownView setNeedsDisplay];
}

@end
