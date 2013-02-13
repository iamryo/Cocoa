//
//  CarArrayController.m
//  CarLot
//
//  Created by Ryan Clark on 2/7/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import "CarArrayController.h"

@implementation CarArrayController

- (id)newObject
{
    id newObj = [super newObject];
    NSDate *now = [NSDate date];
    [newObj setValue:now forKey:@"datePurchased"];
    return newObj;
}

@end
