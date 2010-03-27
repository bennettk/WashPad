//
//  WashPadAppDelegate.m
//  WashPad
//
//  Created by Bennett Kolasinski on 3/26/10.
//  Copyright bennettk 2010. All rights reserved.
//

#import "WashPadAppDelegate.h"
#import "WashPadViewController.h"

@implementation WashPadAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
