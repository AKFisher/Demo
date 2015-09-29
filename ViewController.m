//
//  ViewController.m
//  Demo
//  QQ 1143046712 
//  Created by lxx on 15/9/28.
//  Copyright © 2015年 tom. All rights reserved.
//

#import "ViewController.h"
#import "KKPhotoView.h"
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    KKPhotoView *view2 =[[KKPhotoView alloc]initWithFrame:CGRectMake(100, 300, 100, 100)];
    view2.imgs=@[@"http://i1.tietuku.com/529ec484d0bb1be0t.jpg",
                 @"http://i2.tietuku.com/44f7d0da406e3383.jpg",
                 @"http://i1.tietuku.com/842576f999b175bd.jpg",
                 @"http://i1.tietuku.com/9d5f40c0b80c1d14.jpg",
                 @"http://i1.tietuku.com/e674e28e3817a1cf.jpg",
                 @"http://i1.tietuku.com/e0a300e1189be012t.jpg",
                 @"http://i1.tietuku.com/5df03efa4cdfdb50t.jpg",
                 @"http://i1.tietuku.com/ac89771ce3bc2157.jpg",
                 @"http://i3.tietuku.com/f583b762acd34284t.jpg",
                 @"http://i3.tietuku.com/d802d5355797637bt.jpg",
                 @"http://i2.tietuku.com/5a633bed94031d48t.jpg",
                 @"http://i1.tietuku.com/e96884ae5175027ft.jpg",
                 @"http://i3.tietuku.com/9e2fdafeccef61ddt.jpg",
                 @"http://i2.tietuku.com/89661442524c6650t.jpg",
                 @"http://i2.tietuku.com/4933ea2be5828136t.jpg"];
    [self.view addSubview:view2];

}
@end
