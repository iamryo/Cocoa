//
//  LotteryEntry.m
//  lottery
//
//  Created by Ryan Clark on 12/19/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

- (id)init
{
    return [self initWithEntryDate:[NSDate date]];
}

- (id)initWithEntryDate:(NSDate *)theDate
{
    NSAssert(theDate != nil, @"Argument must be non-nil");
    self = [super init];
    if (self) {
        entryDate = [theDate retain];
        firstNumber = ((int)random() % 100) + 1;
        secondNumber= ((int)random() % 100) + 1;
    }
    return self;
}

- (void)setEntryDate:(NSDate *)date
{
    [date retain];
    [entryDate release];
    entryDate = date;
}

- (NSDate *)entryDate
{
    return entryDate;
}

- (int)firstNumber
{
    return firstNumber;
}

- (int)secondNumber
{
    return secondNumber;
}

- (NSString *)description
{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setTimeStyle:NSDateFormatterNoStyle];
    [df setDateStyle:NSDateFormatterMediumStyle];
    NSString *result;
    result = [[NSString alloc] initWithFormat:@"%@ = %d and %d",
              [df stringFromDate:entryDate], firstNumber, secondNumber];
    [result autorelease];
    [df release];
    return result;
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
    [entryDate release];
    [super dealloc];
}
@end
