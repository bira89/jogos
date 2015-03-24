//
//  ElementsView.m
//  Jogo da Velha
//
//  Created by Bira on 24/03/15.
//  Copyright (c) 2015 Senac. All rights reserved.
//

#import "ElementsView.h"

@implementation ElementsView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All BNRHypnosisViews start with a clear background color
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;

    UIImage *logoImage = [UIImage imageNamed:@"imageX.png"];
    int h = logoImage.size.height;
    int w = logoImage.size.width;
    
    CGRect rectImage = CGRectMake(center.x-w/2, center.y-h/2, w, h);
    [logoImage drawInRect:rectImage];

}

@end
