//
//  WashPadViewController.m
//  WashPad
//
//  Created by Bennett Kolasinski on 3/26/10.
//  Copyright bennettk 2010. All rights reserved.
//

#import "WashPadViewController.h"

@implementation WashPadViewController

@synthesize woodView, washboardView, woodTapRecognizer, boardTapRecognizer, swipeUpRecognizer, swipeDownRecognizer;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
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

	// load us up some sounds, goll darn it
	NSURL *tapUrl = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/tap.wav", [[NSBundle mainBundle] resourcePath]]];
	NSURL *downUrl = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/swipe_down.wav", [[NSBundle mainBundle] resourcePath]]];
	NSURL *upUrl = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/swipe_up.wav", [[NSBundle mainBundle] resourcePath]]];
	NSURL *woodTapUrl = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/wood_tap.wav", [[NSBundle mainBundle] resourcePath]]];

	NSError *error;
	tapPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:tapUrl error:&error];
	swipeDownPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:downUrl error:&error];
	swipeUpPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:upUrl error:&error];
	woodTapPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:woodTapUrl error:&error];

	[tapPlayer prepareToPlay];
	[swipeDownPlayer prepareToPlay];
	[swipeUpPlayer prepareToPlay];
	[woodTapPlayer prepareToPlay];
	
	
    /*
     Create and configure the four recognizers. Add each to the view as a gesture recognizer.
     */
	UIGestureRecognizer *recognizer;
	
    /*
     Create a tap recognizer and add it to the view.
     Keep a reference to the recognizer to test in gestureRecognizer:shouldReceiveTouch:.
     */
	recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleWoodTapFrom:)];
	[woodView addGestureRecognizer:recognizer];
    self.woodTapRecognizer = (UITapGestureRecognizer *)recognizer;
	[recognizer release];

	recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleBoardTapFrom:)];
	[washboardView addGestureRecognizer:recognizer];
    self.boardTapRecognizer = (UITapGestureRecognizer *)recognizer;
	[recognizer release];

	recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeDownFrom:)];
	self.swipeDownRecognizer = (UISwipeGestureRecognizer *)recognizer;
	swipeDownRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
	[self.washboardView addGestureRecognizer:recognizer];
	[recognizer release];
	
	recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeUpFrom:)];
	self.swipeUpRecognizer = (UISwipeGestureRecognizer *)recognizer;
	swipeUpRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
	[self.washboardView addGestureRecognizer:recognizer];
	[recognizer release];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return NO;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

#pragma mark gesture handlers
- (void)handleWoodTapFrom:(UITapGestureRecognizer *)recognizer {
	[woodTapPlayer play];
}

-(void)handleBoardTapFrom:(UITapGestureRecognizer *)recognizer {
	[tapPlayer play];
}

-(void)handleSwipeDownFrom:(UITapGestureRecognizer *)recognizer {
	[swipeDownPlayer play];
}

-(void)handleSwipeUpFrom:(UITapGestureRecognizer *)recognizer {
	[swipeUpPlayer play];
}

- (void)dealloc {
	[woodTapPlayer release];
	[tapPlayer release];
	[swipeDownPlayer release];
	[swipeUpPlayer release];
	[woodView release];
	[washboardView release];
	[woodTapRecognizer release];
	[boardTapRecognizer release];
	[swipeUpRecognizer release];
	[swipeDownRecognizer release];

    [super dealloc];
}

@end
