//
//  SmileyAppDelegate.h
//  Smiley
//
//  Created by Steve Baker on 3/5/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SmileyViewController;

@interface SmileyAppDelegate : UIResponder <UIApplicationDelegate> {
}

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet SmileyViewController *viewController;

@end

