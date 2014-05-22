//
//  AppDelegate.m
//  NotificationTool
//
//  Created by 黒子 雄司 on 2014/05/22.
//  Copyright (c) 2014年 Yuji Kuroko. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}



- (IBAction)clickTest:(id)sender {
    const int DAY_INTERVAL = (60*60*24);
    
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    notification.title = @"Hello, World!";
    notification.subtitle = @"sub";
    notification.actionButtonTitle = @"開く";
    NSDate* nextSecond =  [[NSDate date] dateByAddingTimeInterval:(10 * 1)];
    notification.deliveryDate = nextSecond;
    notification.informativeText = @"A notification";
    notification.userInfo = [NSDictionary dictionary];
    [[NSUserNotificationCenter defaultUserNotificationCenter] scheduleNotification:notification];
    
}


@end
