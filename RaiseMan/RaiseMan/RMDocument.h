//
//  RMDocument.h
//  RaiseMan
//
//  Created by Ryan Clark on 1/15/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RMDocument : NSDocument {
    NSMutableArray *employees;
}
- (void)setEmployees:(NSMutableArray *)a;
@end
