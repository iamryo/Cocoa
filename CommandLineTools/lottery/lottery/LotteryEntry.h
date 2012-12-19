//
//  LotteryEntry.h
//  lottery
//
//  Created by Ryan Clark on 12/19/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject {
    NSDate *entryDate;
    int firstNumber;
    int secondNumber;
}
- (void) prepareRandomNumbers;
- (void) setEntryDate: (NSDate *)date;
- (NSDate *)entryDate;
- (int)firstNumber;
- (int)secondNumber;
@end
