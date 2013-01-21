//
//  RCAppDelegate.m
//  Playlist
//
//  Created by Ryan Clark on 1/10/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import "RCAppDelegate.h"
#import "Parser.h"

@implementation RCAppDelegate

- (id)init
{
    self = [super init];
    if (self) {
        Parser *p = [[Parser alloc] init];
        [p getJSON];
        playlist = [[NSMutableArray alloc] init];

    }
    return self;
}

- (void)setPlaylist:(NSMutableArray *)a
{
    // This is an unusual setter method.
    if (a == playlist)
        return;
    
    playlist = a;
}

- (NSUInteger)trackCount
{
    tracks = [playlist count];
    NSLog(@"Number of tracks = %lx", tracks);
    return tracks;
}



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
}

@end
