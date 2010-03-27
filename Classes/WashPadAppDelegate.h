//
//  WashPadAppDelegate.h
//  WashPad
//
//  Created by Bennett Kolasinski on 3/26/10.
//  Copyright bennettk 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WashPadViewController;

@interface WashPadAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    WashPadViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet WashPadViewController *viewController;

@end

