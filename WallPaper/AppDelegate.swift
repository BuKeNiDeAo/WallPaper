//
//  AppDelegate.swift
//  WallPaper
//
//  Created by 刘胜 on 2020/7/23.
//  Copyright © 2020 liusheng. All rights reserved.
//


import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow!
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window.rootViewController = vv_rootVC
        window.makeKeyAndVisible()
        return true
    }
    
    lazy var vv_rootVC: UIViewController = {
        let vv_rootVcNavigetion = UINavigationController.init(rootViewController: ViewController())
        return vv_rootVcNavigetion
    }()
}

