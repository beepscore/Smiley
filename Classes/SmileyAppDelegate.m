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

- (void)awakeFromNib
{
    // http://stackoverflow.com/questions/7520971/applications-are-expected-to-have-a-root-view-controller-at-the-end-of-applicati
    self.window.rootViewController = self.viewController;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Override point for customization after app launch
    return YES;
}

@end
