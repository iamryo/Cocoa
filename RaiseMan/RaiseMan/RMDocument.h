//
//  RMDocument.h
//  RaiseMan
//
//  Created by Ryan Clark on 1/15/13.
//  Copyright (c) 2013 Ryan Clark. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Person;

@interface RMDocument : NSDocument {
    NSMutableArray *employees;
    IBOutlet NSTableView *tableView;
    IBOutlet NSArrayController *employeeController;
}
- (IBAction)removeEmployee:(id)sender;
- (IBAction)createEmployee:(id)sender;
- (void)setEmployees:(NSMutableArray *)a;
- (void)insertObject:(Person *)p inEmployeesAtIndex:(NSUInteger)index;
- (void)removeObjectFromEmployeesAtIndex:(NSUInteger)index;
@end
