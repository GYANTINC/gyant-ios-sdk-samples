//
//  AppDelegate.m
//  SDKSampleObjc
//
//  Created by Vitor Magalhães on 05/07/2019.
//  Copyright © 2019 GYANT.com, Inc. All rights reserved.
//

#import "AppDelegate.h"
#import <GyantChatSDK/GyantChatSDK.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Sample patient data information.
    GyantChatPatientData *patientData = [GyantChatPatientData new];
    patientData.patientId = @"<YOUR-PATIENT-ID>";
    patientData.gender = @"male"; // male or female
    patientData.visitReason = @"fever";
    patientData.dateOfBirth = @"2001-03-26T20:28:32.383+0000";
    
    [GyantChat startWithClientID:@"<YOUR-CLIENT-ID>" patientData:patientData theme:nil isDev:YES];
    [GyantChat setDelegate:self];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - GyantChatDelegate

- (void)gyantDidReceiveMessage:(NSString *)message
{
    // Called when a new message is received from the server.
}

- (void)gyantRegisterForNotifications:(TokenCompletionHandler)completion
{
    // Called to register push notification during the chat flow.
}

- (void)gyantDidReceiveDiagnosis:(NSDictionary *)diagnosis
{
    // Called when a new diagnosis is received.
}

@end
