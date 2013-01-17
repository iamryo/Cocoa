//
//  Person.m
//  RaiseMan
//
//  Created by Ryan Clark on 1/15/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize personName;
@synthesize expectedRaise;

- (id)init
{
    self = [super init];
    if (self) {
        expectedRaise = 0.05;
        personName = @"New Person";
    }
    return self;
}

@end
