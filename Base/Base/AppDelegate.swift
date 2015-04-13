//
//  AppDelegate.swift
//  Base
//
//  Created by Oscar Swanros on 4/12/15.
//  Copyright (c) 2015 MobileCoder. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        self.window?.backgroundColor = UIColor.whiteColor()
        self.window?.rootViewController = UINavigationController(rootViewController: ViewController())
        
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

