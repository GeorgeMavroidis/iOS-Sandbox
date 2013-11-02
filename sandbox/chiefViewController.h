//
//  chiefViewController.h
//  sandbox
//
//  Created by George on 11/1/2013.
//  Copyright (c) 2013 George. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface chiefViewController : UIViewController <NSXMLParserDelegate, UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UIPageViewController *chiefPageViewController;


@end
