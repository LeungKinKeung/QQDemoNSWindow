//
//  AppDelegate.m
//  QQDemoNSWindow
//
//  Created by LeungKinKeung on 16/9/3.
//  Copyright © 2016年 LeungKinKeung. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}
- (IBAction)newApplication:(NSMenuItem *)sender {
    NSString *executablePath = [[NSBundle mainBundle] executablePath];
    NSTask *task    = [[NSTask alloc] init];
    task.launchPath = executablePath;
    [task launch];
}

@end
