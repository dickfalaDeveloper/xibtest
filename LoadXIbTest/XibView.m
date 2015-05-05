//
//  XibView.m
//  LoadXIbTest
//
//  Created by James on 2015/5/5.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "XibView.h"

@implementation XibView

-(id) initWithFrame:(CGRect)frame
{
    if( self )
    {
    
    }
    
    return self;
}


-(id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    
    if( self )
    {
        // load the interface file from .xib
        
        UIView *containerView = [[[UINib nibWithNibName:@"XibView" bundle:nil] instantiateWithOwner:self options:nil] objectAtIndex:0];
            CGRect newFrame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
            containerView.frame = newFrame;
            [self addSubview:containerView];

        
        //        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"XibView" owner:self options:nil];
        //        self = [array firstObject];
    }
    return self;
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"tap in xib");
 
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
