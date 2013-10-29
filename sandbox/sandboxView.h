//
//  sandboxView.h
//  sandbox
//
//  Created by George on 10/29/2013.
//  Copyright (c) 2013 George. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
@interface sandboxView : UIView
{
    CALayer *boxLayer;
}

@property (nonatomic, weak) UIColor *color;

@end
