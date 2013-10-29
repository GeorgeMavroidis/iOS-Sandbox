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
    
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    [sv setBackgroundColor:color];
    [sv setAlpha:0.5];
    
    [[self view] addSubview:sv];
}
@end
