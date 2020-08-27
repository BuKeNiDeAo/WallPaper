//
//  Util.swift
//  WallPaper
//
//  Created by 刘胜 on 2020/8/25.
//  Copyright © 2020 liusheng. All rights reserved.
//

import Foundation
import UIKit

let vv_screenWidth = UIScreen.main.bounds.width
let vv_screenHeight =  UIScreen.main.bounds.height

public func ff_getRectlocation(x: CGFloat, y: CGFloat, width: CGFloat, heigh: CGFloat, templateWidth: CGFloat, templateHeigh: CGFloat) -> Array<CGFloat> {
        var snpLayoutData:[CGFloat] = []
        let offsetHeigh1 = 0 - templateHeigh + y + heigh
        let c = 0 - templateWidth + x + width
        let offsetTop = vv_screenHeight * y / templateHeigh
        let offsetBottom = vv_screenHeight * offsetHeigh1 / templateHeigh
        let offsetLeft = vv_screenWidth * x / templateWidth
        let offsetRight = vv_screenWidth * c / templateWidth
    
        snpLayoutData.append(offsetTop)
        snpLayoutData.append(offsetBottom)
        snpLayoutData.append(offsetLeft)
        snpLayoutData.append(offsetRight)
    
        return snpLayoutData
}

public func ff_centerLocation(x: CGFloat, y: CGFloat, width: CGFloat, heigh: CGFloat, templateWidth: CGFloat, templateHeigh: CGFloat) -> Array<CGFloat> {
    var snpLaoutData:[CGFloat] = []
    let a = width / 2 + x
    let b = heigh / 2 + y
    let snpX = vv_screenWidth * a / templateWidth
    let snpY = vv_screenHeight * b / templateHeigh
    let snpWidth = vv_screenWidth * width / templateWidth
    let h = vv_screenHeight * heigh / templateHeigh
    
    snpLaoutData.append(snpX)
    snpLaoutData.append(snpY)
    snpLaoutData.append(snpWidth)
    snpLaoutData.append(h)
    
    return snpLaoutData
}

public func ff_autoLayoutRect(x:CGFloat, y: CGFloat, width: CGFloat, height:CGFloat, actualWidth: CGFloat = UIScreen.main.bounds.width, actualHeight: CGFloat = UIScreen.main.bounds.height, templateWidth:CGFloat = 375,  templateHeigh:CGFloat = 812) -> Array<CGFloat>{
    var snpLaoutData:[CGFloat] = []
    let offsetTop = actualHeight * y / templateHeigh
    let offsetBottom = 0 - actualHeight * (templateHeigh - y - height) / templateHeigh
    let offsetLeft = actualWidth * x / templateWidth
    let offsetRight = 0 - actualWidth * (templateWidth - x - width) / templateWidth
        snpLaoutData.append(offsetTop)
        snpLaoutData.append(offsetBottom)
        snpLaoutData.append(offsetLeft)
        snpLaoutData.append(offsetRight)
        return snpLaoutData

}

public func ff_autoLayoutCenter(x:CGFloat, y: CGFloat, width:CGFloat, height:CGFloat, actualWidth: CGFloat = UIScreen.main.bounds.width, actualHeight: CGFloat = UIScreen.main.bounds.height, templateWidth:CGFloat = 375,  templateHeigh:CGFloat = 812) -> Array<CGFloat>{
    var snpLaoutData:[CGFloat] = []
    let snpCenterX = actualWidth * (x + (width / 2)) / templateWidth
    let snpCenterY = actualHeight * (y + (height / 2)) / templateHeigh
    let snpSizeWidth = actualWidth * width / templateWidth
    let snpSizeHeight = actualHeight * height / templateHeigh
    snpLaoutData.append(snpCenterX)
    snpLaoutData.append(snpCenterY)
    snpLaoutData.append(snpSizeWidth)
    snpLaoutData.append(snpSizeHeight)
    return snpLaoutData

}
