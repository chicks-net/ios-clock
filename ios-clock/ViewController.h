//
//  ViewController.h
//  ios-clock
//
//  Created by Christopher Hicks on 5/1/16.
//  Copyright © 2016 Christopher Hicks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *everySecond;
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end

