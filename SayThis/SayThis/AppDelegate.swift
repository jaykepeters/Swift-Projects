//
//  AppDelegate.swift
//  SayThis
//
//  Created by Jaykey P on 1/3/18.
//  Copyright © 2018 JP IT Services. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func talk(_ sender: NSButton) {
        let path = "/usr/bin/say"
        let arguments = ["hello world"]
        
        sender.isEnabled = false
        
        let task = Process.launchedProcess(launchPath: path, arguments: arguments)
        task.waitUntilExit()
        
        sender.isEnabled = true
    }
    

}

