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
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nil bundle:nil];
    
    if(self){
        UITabBarItem *tbi = [self tabBarItem];
        
        [tbi setTitle:@"test"];
        
    }
    return self;
}
-(void)viewDidLoad{
    [super viewDidLoad];
    
    sandboxView *sv = [[sandboxView alloc] initWithFrame:[[self view] bounds]];
    
    [sv setAlpha:0.5];
    
    [[self view] addSubview:sv];
}
@end
