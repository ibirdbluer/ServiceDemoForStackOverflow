//
//  AppDelegate.swift
//  ServiceDemoForStackOverflow
//
//  Created by Gregory Qian on 2018/8/22.
//  Copyright © 2018 Gregory Qian. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        NSApplication.shared.servicesProvider = ServiceProvider()
        NSUpdateDynamicServices()
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

