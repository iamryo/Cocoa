//
//  RandomController.m
//  Random
//
//  Created by Ryan Clark on 12/18/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import "RandomController.h"

@implementation RandomController

- (IBAction)generate:(id)sender
{
    // Generate a number between 1 and 100 inclusive
    int generated;
    generated = (int)(random() % 100) + 1;
    
    NSLog(@"generated = %d", generated);
    
    // Ask the text field to change what it is displaying
    [textField setIntValue:generated];
}

- (IBAction)seed:(id)sender
{
    // Seed the random number generator with the time
    srandom((unsigned)time(NULL));
    [textField setStringValue:@"Generator seeded"];
}

- (void)awakeFromNib
{
    NSDate *now;
    now = [NSDate date];
    [textField setObjectValue:now];
}
@end
