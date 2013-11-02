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
@synthesize pageControl, scrollView, imageArray;

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
    //Put the names of our image files in our array.
    imageArray = [[NSArray alloc] initWithObjects:@"small_one.png", @"small_two.png", @"small_three.png", nil];
    
    for (int i = 0; i < [imageArray count]; i++) {
        //We'll create an imageView object in every 'page' of our scrollView.
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
        imageView.image = [UIImage imageNamed:[imageArray objectAtIndex:i]];
        [[self scrollView] addSubview:imageView];
    }
    //Set the content size of our scrollview according to the total width of our imageView objects.
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [imageArray count], scrollView.frame.size.height);
    
    
    //[[self view] addSubview:sv];
}
- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    // Update the page when more than 50% of the previous/next page is visible
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
}
@end
