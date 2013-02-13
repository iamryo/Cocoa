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
        self.playlist = [p getJSON];
    }
    return self;
}

- (NSString *)convertDuration
{
    NSInteger totalSeconds=0;
    for(NSMutableArray *song in _playlist){
        NSString *durationString = [song valueForKey:@"duration"];
        NSArray *breakMinSec = [durationString componentsSeparatedByString:@":"];
        NSInteger sec = [breakMinSec[1]integerValue];
        NSInteger min = [breakMinSec[0]integerValue];
        totalSeconds += (sec + min * 60);
        }
    NSInteger h = totalSeconds / 3600;
    NSInteger m = (totalSeconds / 60) % 60;
    NSInteger s = totalSeconds % 60;
    
    NSString *totalDurationString = [NSString stringWithFormat:@"%li:%02li:%02li", h, m, s];
    return totalDurationString;
}

- (NSUInteger)uniqueArtistCount
{
    NSMutableArray *uniqueArtists = [_playlist valueForKeyPath:@"@distinctUnionOfObjects.artist"];
    return uniqueArtists.count;
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
    
    NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
    
    if ([key isEqualToString:@"convertDuration"]) {
        NSArray *affectingKeys = @[@"playlist"];
        keyPaths = [keyPaths setByAddingObjectsFromArray:affectingKeys];
    }
    
//    else if ([key isEqualToString:@"uniqueArtistCount"]) {
//        NSArray *affectingKeys = @[@"playlist"];
//        keyPaths = [keyPaths setByAddingObjectsFromArray:affectingKeys];
//        
//    }
    return keyPaths;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
}

@end
