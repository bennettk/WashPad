//
//  WashPadViewController.h
//  WashPad
//
//  Created by Bennett Kolasinski on 3/26/10.
//  Copyright bennettk 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface WashPadViewController : UIViewController {
	AVAudioPlayer *tapPlayer, *swipeDownPlayer, *swipeUpPlayer, *woodTapPlayer;
}

@end

