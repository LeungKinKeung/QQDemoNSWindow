//
//  LKKChatViewController.m
//  QQ Demo
//
//  Created by LeungKinKeung on 16/9/3.
//  Copyright © 2016年 LeungKinKeung. All rights reserved.
//

#import "LKKChatViewController.h"

@implementation LKKChatViewController


#pragma mark - 隐藏(不关闭App)
- (IBAction)hideWindow:(id)sender {
    [[NSApplication sharedApplication] hide:self];
}
#pragma mark - 最小化
- (IBAction)miniaturizeWindow:(id)sender {
    [self.view.window miniaturize:self];
}
#pragma mark - 最大化
- (IBAction)zoomWindow:(id)sender {
    [self.view.window zoom:self];
}

@end
