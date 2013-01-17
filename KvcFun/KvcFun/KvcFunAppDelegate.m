//
//  KvcFunAppDelegate.m
//  KvcFun
//
//  Created by Ryan Clark on 1/4/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import "KvcFunAppDelegate.h"

@implementation KvcFunAppDelegate

- (id)init
{
    self = [super init];
    if (self) {
         [self setValue:[NSNumber numberWithInt:5]
                 forKey:@"fido"];
        NSNumber *n = [self valueForKey:@"fido"];
        NSLog(@"fido = %@", n);
    }
    return self;
}

@synthesize fido;

-(IBAction)incrementFido:(id)sender
{
    [self setFido:[self fido] + 1];
    NSLog(@"fido is now %d", fido);
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
}


@end
