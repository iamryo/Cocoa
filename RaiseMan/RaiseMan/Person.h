//
//  Person.h
//  RaiseMan
//
//  Created by Ryan Clark on 1/15/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *personName;
    float expectedRaise;
}
@property (readwrite, copy) NSString *personName;
@property (readwrite) float expectedRaise;
@end
