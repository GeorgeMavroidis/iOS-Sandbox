//
//  multiplePagesView.h
//  sandbox
//
//  Created by George on 10/31/2013.
//  Copyright (c) 2013 George. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface multiplePagesViewController : UIViewController <UIScrollViewDelegate>
{
    
}

@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UIPageControl *pageControl;


@end
