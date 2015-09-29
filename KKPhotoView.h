//
//  KKPhotoView.h
//  Demo
//
//  Created by tom on 15/9/29.
//  Copyright © 2015年 tom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KKPhotoView : UIView
    // images 链接
@property(nonatomic,strong) NSArray  *imgs ;
@property(nonatomic,assign) NSInteger index;
@property(nonatomic,strong) UIImage *placeholder    ;

@end
