//
//  LKKLoginWindowController.m
//  QQ Demo
//
//  Created by LeungKinKeung on 16/9/3.
//  Copyright © 2016年 LeungKinKeung. All rights reserved.
//

#import "LKKLoginWindowController.h"
#import "AppDelegate.h"

static NSString *const kStoryboardName  = @"Main";
static NSString *const kChatWindowControllerIdentifier = @"LKKLoginWindowController";

@implementation LKKLoginWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    AppDelegate *appDelegate = (AppDelegate *)[NSApplication sharedApplication].delegate;
    appDelegate.mainWindowController = self;
    
    [self.window center];
}


+ (instancetype)windowController{
    
    NSStoryboard *storyboard = [NSStoryboard storyboardWithName:kStoryboardName
                                                         bundle:[NSBundle mainBundle]];
    
    LKKLoginWindowController *loginWC = [storyboard instantiateControllerWithIdentifier:kChatWindowControllerIdentifier];
    
    // 设置动画样式
    [loginWC.window setAnimationBehavior:NSWindowAnimationBehaviorDocumentWindow];
    return loginWC;
}




@end
