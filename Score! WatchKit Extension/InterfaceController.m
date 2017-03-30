//
//  InterfaceController.m
//  Score! WatchKit Extension
//
//  Created by supransh on 3/30/17.
//  Copyright © 2017 jayanti supransh murty. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController ()



@end

int x = 0;
int y = 0;
NSTimer *timer;
BOOL running;
int count;



@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
 
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    self.score_a.text = @"0";
    self.score_b.text = @"0";
    self.timerButton_text.text = @"START";
    
    running = NO;
    count = 0;
    self.timer.text=@"00:00:00";
    if(x>y)
    {
        self.win_text.text=@"TEAM A WINS!";
        
    }
    else if(y>x)
    {
        self.win_text.text=@"TEAM B WINS!";
    }
    else if (x==y) {
        self.win_text.text=@"IT'S A TIE!";
    }
    x = 0;
    y=0;
   
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}


- (IBAction)increaseScoreA {
    if (running == YES) {
        x++;
        NSString *x_score = [NSString stringWithFormat : @"%d" , x];
        self.score_a.text = x_score;

    }
}
- (IBAction)increaseScoreB {
    if (running == YES)
    {
    y++;
    NSString *y_score = [NSString stringWithFormat: @"%d" , y];
    self.score_b.text = y_score;
}
}
- (IBAction)start_timer {
    if(running == NO)
    {
        running = YES;
        if(timer == nil)
        {
            timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(update) userInfo:nil repeats:YES];
            
        }
        self.timerButton_text.text = @"STOP";
        self.timerButton_text.textColor = [UIColor redColor];
        
    }
    else
    {
        running = NO;
        [timer invalidate];
        timer = nil;
        self.timerButton_text.text = @"START";
        self.timerButton_text.textColor = [UIColor greenColor];
    }
}


- (IBAction)gameover {
    

}



-(void) update {
    count++;
    int min = floor(count/100/60);
    int sec = floor(count/100);
    int msec = count%100;
    
    if (sec>=60) {
        sec = sec%60;
    }
    self.timer.text= [NSString stringWithFormat:@"%02d:%02d:%.02d", min,sec,msec];
}


@end


