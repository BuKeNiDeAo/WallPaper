//
//  FF_DataSave.swift
//  WallPaper
//
//  Created by 刘胜 on 2020/8/26.
//  Copyright © 2020 liusheng. All rights reserved.
//

import UIKit


struct FF_DataSave {
    static var vv_wallPaperArray = [
        "https://static.starkos.cn/wallpaper/fensexilie/1.jpg",
        "https://static.starkos.cn/wallpaper/fensexilie/2.jpg",
        "https://static.starkos.cn/wallpaper/fensexilie/3.jpg",
        "https://static.starkos.cn/wallpaper/fensexilie/4.jpg",
        "https://static.starkos.cn/wallpaper/gaoguaihuafeng/1.jpg",
        "https://static.starkos.cn/wallpaper/gaoguaihuafeng/2.jpg",
        "https://static.starkos.cn/wallpaper/gaoguaihuafeng/3.jpg",
        "https://static.starkos.cn/wallpaper/gaoguaihuafeng/4.jpg",
        "https://static.starkos.cn/wallpaper/gaoguaihuafeng/5.jpg"]
    static var vv_videoArray = [
        VideoData(titleName: "如何画一个漫画女孩", imagePath:         "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E4%B8%80%E4%B8%AA%E6%BC%AB%E7%94%BB%E5%A5%B3%E5%AD%A9.png", videoPath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E4%B8%80%E4%B8%AA%E6%BC%AB%E7%94%BB%E5%A5%B3%E5%AD%A9.mp4"),
        VideoData(titleName: "如何画一个漫画女孩", imagePath:         "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E4%B8%80%E4%B8%AA%E6%BC%AB%E7%94%BB%E5%A5%B3%E5%AD%A9.png", videoPath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E4%B8%80%E4%B8%AA%E6%BC%AB%E7%94%BB%E5%A5%B3%E5%AD%A9.mp4"),
        VideoData(titleName: "如何画一个男性漫画人物", imagePath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E4%B8%80%E4%B8%AA%E7%94%B7%E6%80%A7%E6%BC%AB%E7%94%BB%E4%BA%BA%E7%89%A9.png", videoPath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E4%B8%80%E4%B8%AA%E7%94%B7%E6%80%A7%E6%BC%AB%E7%94%BB%E4%BA%BA%E7%89%A9.mp4"),
        VideoData(titleName: "如何画漫画人物的侧脸", imagePath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E6%BC%AB%E7%94%BB%E4%BA%BA%E7%89%A9%E7%9A%84%E4%BE%A7%E8%84%B8.png", videoPath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E6%BC%AB%E7%94%BB%E4%BA%BA%E7%89%A9%E7%9A%84%E4%BE%A7%E8%84%B8.mp4"),
        VideoData(titleName: "如何画漫画女人物头部", imagePath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E6%BC%AB%E7%94%BB%E5%A5%B3%E4%BA%BA%E7%89%A9%E5%A4%B4%E9%83%A8.png", videoPath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E6%BC%AB%E7%94%BB%E5%A5%B3%E4%BA%BA%E7%89%A9%E5%A4%B4%E9%83%A8.mp4"),
        VideoData(titleName: "小女孩与龙猫", imagePath: "https://static.starkos.cn/cartoon/%E5%B0%8F%E5%A5%B3%E5%AD%A9%E4%B8%8E%E9%BE%99%E7%8C%AB.png", videoPath: "https://static.starkos.cn/cartoon/%E5%B0%8F%E5%A5%B3%E5%AD%A9%E4%B8%8E%E9%BE%99%E7%8C%AB.mp4"),
        VideoData(titleName: "手绘画教程-如何画漫画少女", imagePath: "https://static.starkos.cn/cartoon/%E6%89%8B%E7%BB%98%E7%94%BB%E6%95%99%E7%A8%8B-%E5%A6%82%E4%BD%95%E7%94%BB%E6%BC%AB%E7%94%BB%E5%B0%91%E5%A5%B3.png", videoPath: "https://static.starkos.cn/cartoon/%E5%B0%8F%E5%A5%B3%E5%AD%A9%E4%B8%8E%E9%BE%99%E7%8C%AB.mp4"),
        VideoData(titleName: "教你如何画好漫画中的角色", imagePath: "https://static.starkos.cn/cartoon/%E6%95%99%E4%BD%A0%E5%A6%82%E4%BD%95%E7%94%BB%E5%A5%BD%E6%BC%AB%E7%94%BB%E4%B8%AD%E7%9A%84%E8%A7%92%E8%89%B2.png", videoPath: "https://static.starkos.cn/cartoon/%E6%95%99%E4%BD%A0%E5%A6%82%E4%BD%95%E7%94%BB%E5%A5%BD%E6%BC%AB%E7%94%BB%E4%B8%AD%E7%9A%84%E8%A7%92%E8%89%B2.mp4"),
        VideoData(titleName: "漫画人物三分钟学会", imagePath: "https://static.starkos.cn/cartoon/%E6%BC%AB%E7%94%BB%E4%BA%BA%E7%89%A9%E4%B8%89%E5%88%86%E9%92%9F%E5%AD%A6%E4%BC%9A.png", videoPath: "https://static.starkos.cn/cartoon/%E6%BC%AB%E7%94%BB%E4%BA%BA%E7%89%A9%E4%B8%89%E5%88%86%E9%92%9F%E5%AD%A6%E4%BC%9A.mp4"),
        VideoData(titleName: "迪迦奥特曼的铅笔画教程", imagePath: "https://static.starkos.cn/cartoon/%E8%BF%A6%E5%A5%A5%E7%89%B9%E6%9B%BC%E7%9A%84%E9%93%85%E7%AC%94%E7%94%BB%E6%95%99%E7%A8%8B.png", videoPath: "https://static.starkos.cn/cartoon/%E8%BF%A6%E5%A5%A5%E7%89%B9%E6%9B%BC%E7%9A%84%E9%93%85%E7%AC%94%E7%94%BB%E6%95%99%E7%A8%8B.mp4"),
        VideoData(titleName: "陈情令肖战简笔", imagePath: "https://static.starkos.cn/cartoon/%E9%99%88%E6%83%85%E4%BB%A4%E8%82%96%E6%88%98%E7%AE%80%E7%AC%94.png", videoPath: "https://static.starkos.cn/cartoon/%E9%99%88%E6%83%85%E4%BB%A4%E8%82%96%E6%88%98%E7%AE%80%E7%AC%94.mp4")]
     static var vv_mainScreenWallPaperArray = [
        "https://static.starkos.cn/wallpaper/ouyujiaren/1.jpg",
        "https://static.starkos.cn/wallpaper/ouyujiaren/2.jpg",
        "https://static.starkos.cn/wallpaper/ouyujiaren/3.jpg",
        "https://static.starkos.cn/wallpaper/ouyujiaren/4.jpg",
        "https://static.starkos.cn/wallpaper/ouyujiaren/5.jpg",
        "https://static.starkos.cn/wallpaper/ouyujiaren/6.jpg",
        "https://static.starkos.cn/wallpaper/ouyujiaren/7.jpg",
        "https://static.starkos.cn/wallpaper/ouyujiaren/8.jpg",
        "https://static.starkos.cn/wallpaper/ouyujiaren/9.jpg"]

    static var vv_lockScreenWallPaperArray = [
        "https://static.starkos.cn/wallpaper/qinglvxilie/1.jpg",
        "https://static.starkos.cn/wallpaper/qinglvxilie/2.jpg",
        "https://static.starkos.cn/wallpaper/qinglvxilie/3.jpg",
        "https://static.starkos.cn/wallpaper/qinglvxilie/4.jpg",
        "https://static.starkos.cn/wallpaper/qinglvxilie/5.jpg",
        "https://static.starkos.cn/wallpaper/qinglvxilie/6.jpg",
        "https://static.starkos.cn/wallpaper/qinglvxilie/7.jpg",
        "https://static.starkos.cn/wallpaper/qinglvxilie/8.jpg",
        "https://static.starkos.cn/wallpaper/qinglvxilie/9.jpg"]

}

