//
//  WashPadViewController.m
//  WashPad
//
//  Created by Bennett Kolasinski on 3/26/10.
//  Copyright bennettk 2010. All rights reserved.
//

#import "WashPadViewController.h"

@implementation WashPadViewController


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
	//recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapFrom:)];
//	[self.view addGestureRecognizer:recognizer];
//    self.tapRecognizer = (UITapGestureRecognizer *)recognizer;
//    recognizer.delegate = self;
//	[recognizer release];
//	
//    /*
//     Create a swipe gesture recognizer to recognize right swipes (the default).
//     We're only interested in receiving messages from this recognizer, and the view will take ownership of it, so we don't need to keep a reference to it.
//     */
//	recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
//	[self.view addGestureRecognizer:recognizer];
//	[recognizer release];
//	
//    /*
//     Create a swipe gesture recognizer to recognize left swipes.
//     Keep a reference to the recognizer so that it can be added to and removed from the view in takeLeftSwipeRecognitionEnabledFrom:.
//     Add the recognizer to the view if the segmented control shows that left swipe recognition is allowed.
//     */
//	recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
//	self.swipeLeftRecognizer = (UISwipeGestureRecognizer *)recognizer;
//    swipeLeftRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
//    
//    if ([segmentedControl selectedSegmentIndex] == 0) {
//        [self.view addGestureRecognizer:swipeLeftRecognizer];
//    }
//    self.swipeLeftRecognizer = (UISwipeGestureRecognizer *)recognizer;
//	[recognizer release];
//	
//    /*
//     Create a rotation gesture recognizer.
//     We're only interested in receiving messages from this recognizer, and the view will take ownership of it, so we don't need to keep a reference to it.
//     */
//	recognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotationFrom:)];
//	[self.view addGestureRecognizer:recognizer];
//	[recognizer release];
//    
//    // For illustrative purposes, set exclusive touch for the segmented control (see the ReadMe).
//    [segmentedControl setExclusiveTouch:YES];
//    
//    /*
//     Create an image view to display the gesture description.
//     */
//    UIImageView *anImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0.0, 0.0, 300.0, 75.0)];
//    anImageView.contentMode = UIViewContentModeCenter;
//    self.imageView = anImageView;
//    [anImageView release];
//    [self.view addSubview:imageView];
	
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


- (void)dealloc {
    [super dealloc];
}

@end
