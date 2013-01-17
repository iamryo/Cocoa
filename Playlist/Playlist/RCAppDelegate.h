//
//  RCAppDelegate.h
//  Playlist
//
//  Created by Ryan Clark on 1/10/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Song;
@class Parser;

@interface RCAppDelegate : NSObject <NSApplicationDelegate> {
    NSMutableArray *songs;
    NSUInteger tracks;
}
- (void)setSongs:(NSMutableArray *)a;
- (NSUInteger)trackCount;
@property (assign) IBOutlet NSWindow *window;
@property (readwrite, copy) NSArray *jsonSongs;
@end
