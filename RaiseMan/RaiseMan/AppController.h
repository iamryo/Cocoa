//
//  AppController.h
//  RaiseMan
//
//  Created by Ryan Clark on 2/7/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PreferenceController;

@interface AppController : NSObject {
    PreferenceController *preferenceController;
}
- (IBAction)showPreferencePanel:(id)sender;

@end
