//
//  LKKChatWindowController.m
//  QQ Demo
//
//  Created by LeungKinKeung on 16/9/3.
//  Copyright © 2016年 LeungKinKeung. All rights reserved.
//

#import "LKKChatWindowController.h"

static NSString *const kStoryboardName  = @"Main";
static NSString *const kChatWindowControllerIdentifier = @"LKKChatWindowController";

@implementation LKKChatWindowController

+ (instancetype)windowController{
    
    NSStoryboard *storyboard = [NSStoryboard storyboardWithName:kStoryboardName
                                                         bundle:[NSBundle mainBundle]];
    
    LKKChatWindowController *cc = [storyboard instantiateControllerWithIdentifier:kChatWindowControllerIdentifier];
    [cc.window setAnimationBehavior:NSWindowAnimationBehaviorDocumentWindow];
    [cc.window makeFirstResponder:nil];
    return cc;
}


- (void)windowDidLoad {
    [super windowDidLoad];
    
    // 居中
    [self.window center];
}

@end
