//
//  RCAppDelegate.m
//  Playlist
//
//  Created by Ryan Clark on 1/10/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import "RCAppDelegate.h"

@implementation RCAppDelegate

- (id)init
{
    self = [super init];
    if (self) {
        songs = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)setSongs:(NSMutableArray *)a
{
    // This is an unusual setter method.
    if (a == songs)
        return;
    
    songs = a;
}

- (NSUInteger)trackCount
{
    tracks = [songs count];
    NSLog(@"Number of tracks = %lx", tracks);
    return tracks;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSLog(@"Number of tracks = %lx", tracks);
    NSLog(@"jsonSongs contains %@", _jsonSongs);
}

@end
