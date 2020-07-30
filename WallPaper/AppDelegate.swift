//
//  AppDelegate.swift
//  WallPaper
//
//  Created by 刘胜 on 2020/7/23.
//  Copyright © 2020 liusheng. All rights reserved.
//


import UIKit

let w = UIScreen.main.bounds.width
let h =  UIScreen.main.bounds.height
let UISW = UIScreen.main.bounds.width
let UISH = UIScreen.main.bounds.height
public func rect(x:CGFloat, y: CGFloat, w:CGFloat, h:CGFloat, UIW:CGFloat, UIH:CGFloat) -> Array<CGFloat>{
        var array:[CGFloat] = []
        let a = 0 - UIH + y + h
        let c = 0 - UIW + x + w
        
        let t = UISH*y/UIH
        let b = UISH*a/UIH
        let l = UISW*x / UIW
        let r = UISW*c/UIW
        array.append(t)
        array.append(b)
        array.append(l)
        array.append(r)
        return array
    }
public func center(x:CGFloat, y: CGFloat, w:CGFloat, h:CGFloat,UIW:CGFloat, UIH:CGFloat) -> Array<CGFloat>{
    var array:[CGFloat] = []
    let a = w/2 + x
    let x = UISW*a/UIW
    let b = h/2 + y
    let y = UISH*b/UIH
    
    let w = UISW*w/UIW
    let h = UISH*h/UIH
    array.append(x)
    array.append(y)
    array.append(w)
    array.append(h)
    return array
}



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow!


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window.rootViewController = ViewController()
        window.makeKeyAndVisible()
        return true
    }



}

