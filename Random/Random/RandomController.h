//
//  RandomController.h
//  Random
//
//  Created by Ryan Clark on 12/18/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RandomController : NSObject {
    IBOutlet NSTextField *textField;
}

- (IBAction)seed:(id)sender;
- (IBAction)generate:(id)sender;
@end
