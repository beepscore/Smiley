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
    UIWindow *window;
    SmileyViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SmileyViewController *viewController;

@end

