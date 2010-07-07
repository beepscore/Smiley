//
//  SmileyAppDelegate.h
//  Smiley
//
//  Created by Steve Baker on 3/5/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SmileyViewController;

@interface SmileyAppDelegate : NSObject <UIApplicationDelegate> {
    // Xcode automatically adds instance variables to back properties
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SmileyViewController *viewController;

@end

