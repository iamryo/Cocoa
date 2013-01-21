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
    NSString *url=@"http://www.grayv.com/ryan/songlist.json";

    NSURLRequest *theRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];

    NSURLResponse *resp = nil;
    NSError *err = nil;

    NSData *response = [NSURLConnection sendSynchronousRequest: theRequest returningResponse: &resp error: &err];

    NSString * theString = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding]; 
    NSLog(@"response: %@", theString);

    NSArray *jsonSongs = [NSJSONSerialization JSONObjectWithData: response options: 0 error: &err];
    NSLog(@"array = %@", jsonSongs);

    return jsonSongs;
}
@end
