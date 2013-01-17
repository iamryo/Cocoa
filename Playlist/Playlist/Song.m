//
//  Song.m
//  Playlist
//
//  Created by Ryan Clark on 1/16/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import "Song.h"

@implementation Song

@synthesize title;
@synthesize artist;
@synthesize duration;

- (id)init
{
    self = [super init];
    if (self) {
        title = @"New Track";
        artist = @"New Artist";
        duration = [[NSNumber alloc] initWithInt:30];
    }
    return self;
}

@end
