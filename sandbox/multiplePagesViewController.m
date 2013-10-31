//
//  multiplePagesView.m
//  sandbox
//
//  Created by George on 10/31/2013.
//  Copyright (c) 2013 George. All rights reserved.
//

#import "multiplePagesViewController.h"
#import "sandboxView.h"
#import "sandboxViewController.h"

@implementation multiplePagesViewController

@synthesize scrollView, pageControl;
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
