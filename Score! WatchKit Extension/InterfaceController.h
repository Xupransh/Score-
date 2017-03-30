//
//  InterfaceController.h
//  Score! WatchKit Extension
//
//  Created by supransh on 3/30/17.
//  Copyright © 2017 jayanti supransh murty. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *score_a;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *score_b;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *timerButton;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *timerButton_text;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *timer;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *win_text;

@end
