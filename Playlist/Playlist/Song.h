//
//  Song.h
//  Playlist
//
//  Created by Ryan Clark on 1/16/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject {
    NSString *title;
    NSString *artist;
    NSString *duration;
}

@property (readwrite, copy) NSString *title;
@property (readwrite, copy) NSString *artist;
@property (readwrite, copy) NSString *duration;
@end
