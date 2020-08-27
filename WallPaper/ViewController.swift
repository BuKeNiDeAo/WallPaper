//
//  ViewController.swift
//  WallPaper
//
//  Created by 刘胜 on 2020/7/23.
//  Copyright © 2020 liusheng. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var vv_navigationBarHeigh: CGFloat!
    var vv_statusBarHeight: CGFloat!
    var vv_adornLb: UILabel!
    var cutView, vv_adornView: UIView!
    var vv_cartoonWallPaperBtn, vv_cartoonVideoBtn, vv_mainScreenWallPaperBtn, vv_screenLockBtn: UIButton!
    var vv_cartoonWallPaperLb, vv_cartoonVideoLb, vv_mainScreenWallPaperLb, vv_screenLockLb: UILabel!
    var vv_mainImageView: UIImageView!
    var vv_everyDayCommended = [
        "https://static.starkos.cn/wallpaper/zuixintuijian/1.jpg",
        "https://static.starkos.cn/wallpaper/zuixintuijian/2.jpg",
        "https://static.starkos.cn/wallpaper/zuixintuijian/3.jpg",
        "https://static.starkos.cn/wallpaper/zuixintuijian/4.jpg",
        "https://static.starkos.cn/wallpaper/zuixintuijian/5.jpg",
        "https://static.starkos.cn/wallpaper/zuixintuijian/6.jpg"]
    var vv_classBtnImageName = ["aa1", "aa2", "aa3", "aa4"]
    var vv_classLbTitle = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        ff_initStatusNavigationHeight()
        ff_setNavigation()
        ff_initMainImageView()
        ff_initClassLb()
        ff_initClassBtn()
        ff_initCutView()
        ff_initAdornView()
        ff_setEveryDayCommendedView()
    }
    
    func ff_initStatusNavigationHeight() {
        vv_navigationBarHeigh = self.navigationController?.navigationBar.frame.height
        vv_statusBarHeight = UIApplication.shared.statusBarFrame.height
    }
    
    func ff_setNavigation() {
        self.title = "壁纸"
        self.view.backgroundColor = .white
        self.edgesForExtendedLayout = UIRectEdge.top
        self.navigationController?.navigationBar.backgroundColor = .white
        self.navigationController?.navigationBar.isTranslucent = false
    }
    
    func ff_initMainImageView(){
        vv_mainImageView = UIImageView()
        vv_mainImageView.image = UIImage(named: "aa5")
        self.view.addSubview(vv_mainImageView)
        vv_mainImageView.snp.makeConstraints { (make) in
            let vv_snpLayoutData = ff_autoLayoutCenter(x: 0, y: 64 - 64, width: 414, height: 220, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
            make.center.equalTo(CGPoint(x: vv_snpLayoutData[0], y: vv_snpLayoutData[1]))
            print(vv_snpLayoutData[3])
            make.size.equalTo(CGSize(width: vv_snpLayoutData[2], height: vv_snpLayoutData[3]))
        }
    }
    
    func ff_initClassLb() {
        vv_cartoonWallPaperLb = UILabel()
        vv_cartoonVideoLb = UILabel()
        vv_mainScreenWallPaperLb = UILabel()
        vv_screenLockLb = UILabel()
        vv_cartoonWallPaperLb.font = UIFont(name: "PingFangSC-Regular", size: 14)
        vv_cartoonVideoLb.font = UIFont(name: "PingFangSC-Regular", size: 14)
        vv_mainScreenWallPaperLb.font = UIFont(name: "PingFangSC-Regular", size: 14)
        vv_screenLockLb.font = UIFont(name: "PingFangSC-Regular", size: 14)
        vv_cartoonWallPaperLb.adjustsFontForContentSizeCategory = true
        vv_cartoonVideoLb.adjustsFontForContentSizeCategory = true
        vv_mainScreenWallPaperLb.adjustsFontForContentSizeCategory = true
        vv_screenLockLb.adjustsFontForContentSizeCategory = true
        vv_cartoonWallPaperLb.textAlignment = .center
        vv_cartoonVideoLb.textAlignment = .center
        vv_mainScreenWallPaperLb.textAlignment = .center
        vv_screenLockLb.textAlignment = .center
        vv_cartoonWallPaperLb.text = "漫画壁纸"
        vv_cartoonVideoLb.text = "漫画视频"
        vv_mainScreenWallPaperLb.text = "主屏"
        vv_screenLockLb.text = "锁屏"
        self.view.addSubview(vv_cartoonWallPaperLb)
        self.view.addSubview(vv_cartoonVideoLb)
        self.view.addSubview(vv_mainScreenWallPaperLb)
        self.view.addSubview(vv_screenLockLb)
        vv_cartoonWallPaperLb.snp.makeConstraints { (make) in
            let vv_snpLayoutData = ff_autoLayoutCenter(x: 27, y: 354 - 64, width: 56, height: 20, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
            make.center.equalTo(CGPoint(x: vv_snpLayoutData[0], y: vv_snpLayoutData[1]))
            make.size.equalTo(CGSize(width: vv_snpLayoutData[2] + 10, height: vv_snpLayoutData[3]))
        }
        vv_cartoonVideoLb.snp.makeConstraints { (make) in
            let vv_snpLayoutData = ff_autoLayoutCenter(x: 128, y: 354 - 64, width: 56, height: 20, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
            make.center.equalTo(CGPoint(x: vv_snpLayoutData[0], y: vv_snpLayoutData[1]))
            make.size.equalTo(CGSize(width: vv_snpLayoutData[2] + 10, height: vv_snpLayoutData[3]))
        }
        vv_mainScreenWallPaperLb.snp.makeConstraints { (make) in
            let vv_snpLayoutData = ff_autoLayoutCenter(x: 244, y: 354 - 64, width: 28, height: 20, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
            make.center.equalTo(CGPoint(x: vv_snpLayoutData[0], y: vv_snpLayoutData[1]))
            make.size.equalTo(CGSize(width: vv_snpLayoutData[2] + 10, height: vv_snpLayoutData[3]))
        }
        vv_screenLockLb.snp.makeConstraints { (make) in
            let vv_snpLayoutData = ff_autoLayoutCenter(x: 345, y: 354 - 64, width: 28, height: 20, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
            make.center.equalTo(CGPoint(x: vv_snpLayoutData[0], y: vv_snpLayoutData[1]))
            make.size.equalTo(CGSize(width: vv_snpLayoutData[2] + 10, height: vv_snpLayoutData[3]))
        }
    }
    
    func ff_initClassBtn() {
        vv_cartoonWallPaperBtn = UIButton()
        vv_cartoonWallPaperBtn.setImage(UIImage(named: "aa1"), for: .normal)
        vv_cartoonVideoBtn = UIButton()
        vv_cartoonVideoBtn.setImage(UIImage(named: "aa2"), for: .normal)
        vv_mainScreenWallPaperBtn = UIButton()
        vv_mainScreenWallPaperBtn.setImage(UIImage(named: "aa3"), for: .normal)
        vv_screenLockBtn = UIButton()
        vv_screenLockBtn.setImage(UIImage(named: "aa4"), for: .normal)
        vv_cartoonWallPaperBtn.tag = 0
        vv_cartoonVideoBtn.tag = 1
        vv_mainScreenWallPaperBtn.tag = 2
        vv_screenLockBtn.tag = 3
        vv_cartoonWallPaperBtn.addTarget(self, action: #selector(ff_enterClassPage), for: .touchUpInside)
        vv_cartoonVideoBtn.addTarget(self, action: #selector(ff_enterClassPage), for: .touchUpInside)
        vv_mainScreenWallPaperBtn.addTarget(self, action: #selector(ff_enterClassPage), for: .touchUpInside)
        vv_screenLockBtn.addTarget(self, action: #selector(ff_enterClassPage), for: .touchUpInside)
        self.view.addSubview(vv_cartoonVideoBtn)
        self.view.addSubview(vv_mainScreenWallPaperBtn)
        self.view.addSubview(vv_screenLockBtn)
        self.view.addSubview(vv_cartoonWallPaperBtn)
        vv_cartoonWallPaperBtn.snp.makeConstraints { (make) in
            let vv_snpLayoutData = ff_autoLayoutCenter(x: 30, y: 296 - 64, width: 50, height: 50, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
            make.center.equalTo(CGPoint(x: vv_snpLayoutData[0], y: vv_snpLayoutData[1]))
            make.size.equalTo(CGSize(width: vv_snpLayoutData[2], height: vv_snpLayoutData[3]))
        }
        vv_cartoonVideoBtn.snp.makeConstraints { (make) in
            let vv_snpLayoutData = ff_autoLayoutCenter(x: 131, y: 296 - 64, width: 50, height: 50, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
            make.center.equalTo(CGPoint(x: vv_snpLayoutData[0], y: vv_snpLayoutData[1]))
            make.size.equalTo(CGSize(width: vv_snpLayoutData[2], height: vv_snpLayoutData[3]))
        }
        vv_mainScreenWallPaperBtn.snp.makeConstraints { (make) in
             let vv_snpLayoutData = ff_autoLayoutCenter(x: 233, y: 296 - 64, width: 50, height: 50, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
             make.center.equalTo(CGPoint(x: vv_snpLayoutData[0], y: vv_snpLayoutData[1]))
             make.size.equalTo(CGSize(width: vv_snpLayoutData[2], height: vv_snpLayoutData[3]))
         }
        vv_screenLockBtn.snp.makeConstraints { (make) in
            let vv_snpLayoutData = ff_autoLayoutCenter(x: 334, y: 296 - 64, width: 50, height: 50, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
            make.center.equalTo(CGPoint(x: vv_snpLayoutData[0], y: vv_snpLayoutData[1]))
            make.size.equalTo(CGSize(width: vv_snpLayoutData[2], height: vv_snpLayoutData[3]))
        }
    }
    
    func ff_initCutView() {
        cutView = UIView()
        cutView.backgroundColor = UIColor.init(red: 232/255.0, green: 232/255.0, blue: 232/255.0, alpha: 1.0)
        self.view.addSubview(cutView)
        cutView.snp.makeConstraints { (make) in
            let vv_snpLayoutData = ff_autoLayoutCenter(x: 0, y: 384 - 64, width: 414, height: 6, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
                make.center.equalTo(CGPoint(x: vv_snpLayoutData[0], y: vv_snpLayoutData[1]))
                make.size.equalTo(CGSize(width: vv_snpLayoutData[2], height: vv_snpLayoutData[3]))
        }
    }
    
    func ff_initAdornView() {
        vv_adornLb = UILabel()
        vv_adornLb.text = "每日推荐"
        vv_adornLb.numberOfLines = 0
        vv_adornLb.textAlignment = .left
        vv_adornLb.font = UIFont.init(name: "PingFangSC-Thin", size: 16)
        self.view.addSubview(vv_adornLb)
        vv_adornLb.snp.makeConstraints { (make) in
            let vv_snpLayoutData = ff_autoLayoutCenter(x: 22, y: 410 - 64, width: 64, height: 22, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
            make.center.equalTo(CGPoint(x: vv_snpLayoutData[0] + 5, y: vv_snpLayoutData[1]))
            make.size.equalTo(CGSize(width: vv_snpLayoutData[2] + 10, height: vv_snpLayoutData[3]))
        }

        vv_adornView = UIView()
        vv_adornView.backgroundColor = UIColor.init(red: 52/255.0, green: 52/255.0, blue: 53/255.0, alpha: 1.0)
        self.view.addSubview(vv_adornView)
        vv_adornView.snp.makeConstraints { (make) in
            let vv_snpLayoutData = ff_autoLayoutCenter(x: 10, y: 412 - 64, width: 4, height: 18, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
            make.center.equalTo(CGPoint(x: vv_snpLayoutData[0], y: vv_snpLayoutData[1]))
            make.size.equalTo(CGSize(width: vv_snpLayoutData[2], height: vv_snpLayoutData[3]))
        }
    }
    
    func ff_setEveryDayCommendedView(){
        let layout = UICollectionViewFlowLayout()
        //        layout.scrollDirection = .vertical
        let lyoutSize = ff_autoLayoutCenter(x: 0, y: 0, width: 128, height: 227, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
        layout.itemSize = CGSize(width: lyoutSize[2], height: lyoutSize[3])
        layout.minimumLineSpacing = vv_screenHeight * 8 / (911 - 64)
        layout.minimumInteritemSpacing = vv_screenWidth * 6 / 414
        layout.sectionInset = UIEdgeInsets(top: 0, left: vv_screenWidth * 8 / 414, bottom: vv_screenHeight * 7 / (911 - 64), right: vv_screenWidth * 8 / 414)
        let vv_previewView = UICollectionView(frame: CGRect.zero,collectionViewLayout: layout)
        vv_previewView.showsVerticalScrollIndicator = false
        vv_previewView.isPagingEnabled = false
        vv_previewView.alwaysBounceVertical = false
        vv_previewView.backgroundColor = .red
        vv_previewView.delegate = self
        vv_previewView.dataSource = self
        vv_previewView.backgroundColor = .white
        //注册数据载体类
        vv_previewView.register(NSClassFromString("UICollectionViewCell"), forCellWithReuseIdentifier: "itemId")
        self.view.addSubview(vv_previewView)
        vv_previewView.snp.makeConstraints { (make) in
            let vv_snpLayoutData = ff_autoLayoutCenter(x: 0, y: 442 - 64, width: 414, height: 911 - 442, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 911 - 64)
             make.center.equalTo(CGPoint(x: vv_snpLayoutData[0], y: vv_snpLayoutData[1]))
             make.size.equalTo(CGSize(width: vv_snpLayoutData[2], height: vv_snpLayoutData[3]))
        }
    }
    
    @objc func ff_enterClassPage(bt: UIButton){
        switch bt.tag {
        case 0:
            let FF_PreviewWallPaperVC = FF_PreviewImageVC()
            self.modalPresentationStyle = .fullScreen
            FF_PreviewWallPaperVC.modalPresentationStyle = .fullScreen
            FF_PreviewWallPaperVC.vv_titltText = "漫画壁纸"
            FF_PreviewWallPaperVC.vv_imageArrayPath = FF_DataSave.vv_wallPaperArray
            self.navigationController?.pushViewController(FF_PreviewWallPaperVC, animated: true)
        case 1:
            let FF_PreviewVideoPageVC = FF_PreviewVideoVC()
            self.modalPresentationStyle = .fullScreen
            FF_PreviewVideoPageVC.modalPresentationStyle = .fullScreen
            FF_PreviewVideoPageVC.vv_videoArrayURL = FF_DataSave.vv_videoArray
            present(FF_PreviewVideoPageVC, animated: true)
        case 2:
            let FF_PreviewMainScreenVC = FF_PreviewImageVC()
            self.modalPresentationStyle = .fullScreen
            FF_PreviewMainScreenVC.modalPresentationStyle = .fullScreen
            FF_PreviewMainScreenVC.vv_titltText = "主屏"
            FF_PreviewMainScreenVC.vv_imageArrayPath = FF_DataSave.vv_mainScreenWallPaperArray
            self.navigationController?.pushViewController(FF_PreviewMainScreenVC, animated: true)
        case 3:
            let FF_PreviewLockScreenVC = FF_PreviewImageVC()
            self.modalPresentationStyle = .fullScreen
            FF_PreviewLockScreenVC.modalPresentationStyle = .fullScreen
            FF_PreviewLockScreenVC.vv_titltText = "锁屏"
            FF_PreviewLockScreenVC.vv_imageArrayPath = FF_DataSave.vv_lockScreenWallPaperArray
            self.navigationController?.pushViewController(FF_PreviewLockScreenVC, animated: true)
        default:
            return
        }
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        vv_everyDayCommended.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemId", for: indexPath)
        let vv_preViewImageView = UIImageView()
        vv_preViewImageView.frame.size = cell.frame.size
        vv_preViewImageView.downloadedFrom(link: vv_everyDayCommended[indexPath.row])
        cell.addSubview(vv_preViewImageView)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let catImage = FF_CatImage()
        catImage.vv_assetPath = vv_everyDayCommended[indexPath.row]
        self.modalPresentationStyle = .fullScreen
        catImage.modalPresentationStyle = .fullScreen
        self.present(catImage,animated: true)
    }
}

extension UIImageView {
    func downloadedFrom(url: URL, contentMode mode: UIView.ContentMode = .scaleToFill) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                self.image = image
            }
        }.resume()
    }
    
    func downloadedFrom(link: String, contentMode mode: UIView.ContentMode = .scaleToFill) {
        guard let url = URL(string: link) else { return }
        downloadedFrom(url: url, contentMode: mode)
    }
}
