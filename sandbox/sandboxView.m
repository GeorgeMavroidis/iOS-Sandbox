//
//  sandboxView.m
//  sandbox
//
//  Created by George on 10/29/2013.
//  Copyright (c) 2013 George. All rights reserved.
//

#import "sandboxView.h"
#import <QuartzCore/QuartzCore.h>
@implementation sandboxView

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    if(self){
        [self setBackgroundColor:[UIColor greenColor]];
        boxLayer = [[CALayer alloc] init];
        [boxLayer setBounds: CGRectMake(0.0, 0.0, 85.0, 85.0)];
        [boxLayer setPosition:CGPointMake(50.0,50.0)];
        UIColor *reddish = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1];
        CGColorRef cgReddish = [reddish CGColor];
        [boxLayer setBackgroundColor:cgReddish];
        
        
        [[self layer] addSublayer:boxLayer];
    }
    return self;
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *t = [touches anyObject];
    CGPoint p = [t locationInView:self];
    [boxLayer setPosition:p];
}
@end
