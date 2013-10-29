//
//  sandboxAppDelegate.h
//  sandbox
//
//  Created by George on 10/29/2013.
//  Copyright (c) 2013 George. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sandboxView.h"
@interface sandboxAppDelegate : UIResponder{
    sandboxView *view;
}

@property (strong, nonatomic) UIWindow *window;

@end
