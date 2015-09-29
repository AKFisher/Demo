//
//  KKPhotoView.m
//  Demo
//
//  Created by tom on 15/9/29.
//  Copyright © 2015年 tom. All rights reserved.
//

#import "KKPhotoView.h"
#import "UIImageView+WebCache.h"

@interface KKPhotoView()

@property(nonatomic,strong) UIImageView  *img ;

@end

@implementation KKPhotoView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        self.clipsToBounds=YES;
        UIImageView *img =[[UIImageView alloc]initWithFrame:self.bounds];
        img.contentMode=UIViewContentModeScaleAspectFill;
        img.clipsToBounds=YES;
        [self addSubview:img];
        self.img=img;
    }
    return self;
}

-(void)didMoveToSuperview {
    NSTimer *myTimer = [NSTimer timerWithTimeInterval:3.0 target:self selector:@selector(timerFired) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:myTimer forMode:NSRunLoopCommonModes];

}
- (void) timerFired {
    _index++;
    NSArray *subtypes=@[kCATransitionFromLeft,kCATransitionFromBottom,kCATransitionFromRight,kCATransitionFromTop];
    CATransition  *animation=[CATransition animation];
    animation.duration=1.4;
    animation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.type = kCATransitionPush;
    animation.subtype = subtypes[arc4random_uniform(4)];
    _index=_index%_imgs.count   ;
    [_img sd_setImageWithURL:[NSURL URLWithString:_imgs[_index]] placeholderImage:_placeholder];
    [_img.layer addAnimation:animation forKey:nil];
}

-(void)setImgs:(NSArray *)imgs {
    _imgs=imgs;
    [_img sd_setImageWithURL:[NSURL URLWithString:imgs[_index]] placeholderImage:_placeholder];
}

@end
