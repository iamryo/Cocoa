//
//  KvcFunAppDelegate.h
//  KvcFun
//
//  Created by Ryan Clark on 1/4/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface KvcFunAppDelegate : NSObject <NSApplicationDelegate> {
    int fido;
}
- (IBAction)incrementFido:(id)sender;

@property (assign) IBOutlet NSWindow *window;
@property (readwrite, assign) int fido;

@end
