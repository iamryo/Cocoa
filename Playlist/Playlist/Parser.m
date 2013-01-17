//
//  Parser.m
//  Playlist
//
//  Created by Ryan Clark on 1/16/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import "Parser.h"

@implementation Parser

- (NSArray *)getJSON
{
    NSString *url=@"www.grayv.com/ryan/songlist.json";

    NSURLRequest *theRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];

    NSURLResponse *resp = nil;
    NSError *err = nil;

    NSData *response = [NSURLConnection sendSynchronousRequest: theRequest returningResponse: &resp error: &err];

    NSArray *jsonSongs = [NSJSONSerialization JSONObjectWithData: response options: 0 error: &err];

    return jsonSongs;
    NSLog(@"Hello?");
}
@end
