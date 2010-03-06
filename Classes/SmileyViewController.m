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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Earlier versions of frownView drew it partially off the screen. 
    // The clipped portion stayed clipped as the view was animated onto screen.
    // Instead, in FrownView draw view centered on screen, then move it off here.
    self.frownView.frame = CGRectMake(-320.0f, 0.0f, 320.0f, 416.0f);
}


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
    
    if (self.frownView.frame.origin.x < -1.0f) {
        // self.frownView.center = CGPointMake(200.0f, 200.0f);    
        NSLog(@"show frown");
        self.frownView.frame = CGRectMake(0.0f, 0.0f, 320.0f, 416.0f);
        self.smileyView.frame = CGRectMake(320.0f, 0.0f, 320.0f, 416.0f);
    } else {
        NSLog(@"show smile");
        self.frownView.frame = CGRectMake(-320.0f, 0.0f, 320.0f, 416.0f);
        self.smileyView.frame = CGRectMake(0.0f, 0.0f, 320.0f, 416.0f);
    }
    [UIView commitAnimations];
}

@end
