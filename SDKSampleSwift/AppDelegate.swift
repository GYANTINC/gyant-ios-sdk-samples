//
//  AppDelegate.swift
//  SDKSampleSwift
//
//  Created by Vitor Magalhães on 05/07/2019.
//  Copyright © 2019 GYANT.com, Inc. All rights reserved.
//

import UIKit
import GyantChatSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GyantChatDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        let patientData = GyantChatPatientData()
        patientData.patientId = "<YOUR-PATIENT-ID>"
        patientData.gender = "male" // male or female
        patientData.visitReason = "fever"
        patientData.dateOfBirth = "2001-03-26T20:28:32.383+0000"
        
        GyantChat.start(withClientID: "<YOUR-CLIENT-ID>", patientData:patientData, theme: nil, isDev: true)
        GyantChat.setDelegate(self)
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    // MARK: - GyantChatDelegate
    func gyantDidReceiveMessage(_ message: String) {
        // Called when a new message is received from the server.
    }
    
    func gyantRegister(forNotifications completion: @escaping TokenCompletionHandler) {
        // Called to register push notification during the chat flow.
    }
    
    func gyantDidReceiveDiagnosis(_ diagnosis: [AnyHashable : Any]) {
        // Called when a new diagnosis is received.
    }
}
