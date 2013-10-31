//
//  sandboxViewController.h
//  sandbox
//
//  Created by George on 10/29/2013.
//  Copyright (c) 2013 George. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface sandboxViewController : UIViewController <UIScrollViewDelegate>{
    
    __weak IBOutlet UILabel *textLabel;
    
}

- (IBAction)changeLabel:(id)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (nonatomic, strong) NSArray *imageArray; //.h

@end
