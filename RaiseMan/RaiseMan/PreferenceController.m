//
//  PreferenceController.m
//  RaiseMan
//
//  Created by Ryan Clark on 2/7/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import "PreferenceController.h"

NSString * const BNRTableBgColorKey = @"BNRTableBackgroundColor";
NSString * const BNREmptyDocKey = @"BNREmptyDocumentFlag";
NSString * const BNRColorChangedNotification = @"BNRColorChanged";

@implementation PreferenceController

- (id)init{
    self = [super initWithWindowNibName:@"Preferences"];
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    [colorWell setColor: [PreferenceController preferenceTableBgColor]];
    [checkbox setState: [PreferenceController preferenceEmptyDoc]];
}

- (IBAction)changeBackgroundColor:(id)sender
{
    NSColor *color = [colorWell color];
    [PreferenceController setPreferenceTableBgColor:color];
    
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    NSLog(@"Sending notification");
    NSDictionary *d = [NSDictionary dictionaryWithObject:color forKey:@"color"];
    [nc postNotificationName:BNRColorChangedNotification
                      object:self
                    userInfo:d];
}

- (IBAction)changeNewEmptyDoc:(id)sender
{
    NSInteger state = [checkbox state];
    [PreferenceController setPreferenceEmptyDoc:state];
}

+ (NSColor *)preferenceTableBgColor
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *colorAsData = [defaults objectForKey:BNRTableBgColorKey];
    return [NSKeyedUnarchiver unarchiveObjectWithData:colorAsData];
}

+ (void)setPreferenceTableBgColor:(NSColor *)color
{
    NSData *colorAsData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [[NSUserDefaults standardUserDefaults] setObject:colorAsData forKey:BNRTableBgColorKey];
}

+ (BOOL)preferenceEmptyDoc
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults boolForKey:BNREmptyDocKey];
}

+ (void)setPreferenceEmptyDoc:(BOOL)emptyDoc
{
    [[NSUserDefaults standardUserDefaults] setBool:emptyDoc forKey:BNREmptyDocKey];
}
@end
