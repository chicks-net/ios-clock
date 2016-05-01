//
//  ViewController.m
//  ios-clock
//
//  Created by Christopher Hicks on 5/1/16.
//  Copyright © 2016 Christopher Hicks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self doEverySecond];
    everySecond = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(doEverySecond) userInfo:nil repeats:YES];
}


- (void)doEverySecond {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"HH:mm:ss"];
    self.timeLabel.text = [formatter stringFromDate:[NSDate date]];
    
    [formatter setDateFormat:@"EEE, yyyy-MM-dd"];
    self.dateLabel.text = [formatter stringFromDate:[NSDate date]];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
