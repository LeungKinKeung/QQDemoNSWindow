//
//  LKKLoginViewController.m
//  QQ Demo
//
//  Created by LeungKinKeung on 16/9/3.
//  Copyright © 2016年 LeungKinKeung. All rights reserved.
//

#import "LKKLoginViewController.h"
#import "LKKChatWindowController.h"
#import "AppDelegate.h"

@interface LKKLoginViewController ()

@property (weak) IBOutlet NSImageView *headImageView;

@end

@implementation LKKLoginViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    [self initView];
}

#pragma mark - 初始化视图
- (void)initView{
    
    // 设置背景色为白色
    self.view.wantsLayer = YES;
    self.view.layer.backgroundColor = [NSColor whiteColor].CGColor;
    
    // 头像圆边
    self.headImageView.wantsLayer = YES;
    self.headImageView.layer.cornerRadius  = self.headImageView.bounds.size.width / 2;
    self.headImageView.layer.masksToBounds = YES;
    self.headImageView.layer.borderWidth   = 2;
    self.headImageView.layer.borderColor   = [NSColor lightGrayColor].CGColor;
}

#pragma mark - 点击了登录Button
- (IBAction)loginButtonClicked:(NSButton *)sender {
    
    // 1.创建聊天界面窗口控制器
    LKKChatWindowController *chatWinControl = [LKKChatWindowController windowController];
    
    // 2.强引用这个Window，不然这个Window会在跳转之后的瞬间被销毁
    AppDelegate *appDelegate = (AppDelegate *)[NSApplication sharedApplication].delegate;
    appDelegate.mainWindowController = chatWinControl;
    
    // 3.设为KeyWindow并前置
    [chatWinControl.window makeKeyAndOrderFront:self];
    
    // 4.关闭现在的登录窗口
    [self.view.window orderOut:self];
}

#pragma mark - 关闭窗口
- (IBAction)closeWindow:(id)sender {
    exit(0);
}

@end
