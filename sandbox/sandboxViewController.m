//
//  sandboxViewController.m
//  sandbox
//
//  Created by George on 10/29/2013.
//  Copyright (c) 2013 George. All rights reserved.
//

#import "sandboxViewController.h"
#import "sandboxView.h"

@implementation sandboxViewController

- (IBAction)changeLabel:(id)sender {
    NSArray *myArray = [NSArray arrayWithObjects:@"George", @"Mavroidis",nil];
    NSUInteger randomIndex = arc4random() % [myArray count];
    [textLabel setText:[myArray objectAtIndex:randomIndex]];
    
}
@end
