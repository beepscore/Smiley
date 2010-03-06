//
//  SmileyAppDelegate.m
//  Smiley
//
//  Created by Steve Baker on 3/5/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import "SmileyAppDelegate.h"
#import "SmileyViewController.h"

@implementation SmileyAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
