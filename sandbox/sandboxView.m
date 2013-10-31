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
@synthesize color;

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
   /* UITouch *t = [touches anyObject];
    CGPoint p = [t locationInView:self];
    [boxLayer setPosition:p];
    
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *col = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    [self setColor:col];
    [super setBackgroundColor:[self color]];*/
}

@end
