//
//  WashPadViewController.h
//  WashPad
//
//  Created by Bennett Kolasinski on 3/26/10.
//  Copyright bennettk 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface WashPadViewController : UIViewController <UIGestureRecognizerDelegate> {
	IBOutlet UIView *woodView;
	IBOutlet UIView *washboardView;
	
	UITapGestureRecognizer *woodTapRecognizer;
	UITapGestureRecognizer *boardTapRecognizer;
	UISwipeGestureRecognizer *swipeUpRecognizer;
	UISwipeGestureRecognizer *swipeDownRecognizer;
	
	AVAudioPlayer *tapPlayer, *swipeDownPlayer, *swipeUpPlayer, *woodTapPlayer;
}

@property (nonatomic, retain) IBOutlet UIView *woodView;
@property (nonatomic, retain) IBOutlet UIView *washboardView;

@property (nonatomic, retain) UITapGestureRecognizer *woodTapRecognizer;
@property (nonatomic, retain) UITapGestureRecognizer *boardTapRecognizer;
@property (nonatomic, retain) UISwipeGestureRecognizer *swipeUpRecognizer;
@property (nonatomic, retain) UISwipeGestureRecognizer *swipeDownRecognizer;


@end

