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
    var titleLb1, titleLb2: UILabel!
    var cutView, adornView: UIView!
    var view0,view1,view2,view3: UIButton!
    var lb0,lb1,lb2,lb3: UILabel!
    var bt0,bt1,bt2,bt3: UIButton!
    var imageView: UIImageView!
    var everyDayCommended = [        "https://static.starkos.cn/wallpaper/zuixintuijian/1.jpg",
                                     "https://static.starkos.cn/wallpaper/zuixintuijian/2.jpg",
                                     "https://static.starkos.cn/wallpaper/zuixintuijian/3.jpg",
                                     "https://static.starkos.cn/wallpaper/zuixintuijian/4.jpg",
                                     "https://static.starkos.cn/wallpaper/zuixintuijian/5.jpg",
                                     "https://static.starkos.cn/wallpaper/zuixintuijian/6.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        print(self.view.bounds)
        self.mainView()
        self.collectView()
    }
    func mainView(){
        titleLb1 = UILabel()
        titleLb1.text = "壁纸"
        titleLb1.textAlignment = .center
        titleLb1.numberOfLines = 0
        titleLb1.tintColor = .black
        titleLb1.font = UIFont.init(name: "PingFangSC-Semibold", size: 16)
        self.view.addSubview(titleLb1)
        titleLb1.snp.makeConstraints { (make) in
            let a = center(x: 191, y: 31, w: 32, h: 22, UIW: 414, UIH: 911)
            make.center.equalTo(CGPoint(x: a[0], y: a[1]))
            make.size.equalTo(CGSize(width: a[2]+10, height: a[3]))
        }
        
        
        titleLb2 = UILabel()
        titleLb2.text = "每日推荐"
        titleLb2.numberOfLines = 0
        titleLb2.textAlignment = .left
        titleLb2.font = UIFont.init(name: "PingFangSC-Thin", size: 16)
        self.view.addSubview(titleLb2)
        titleLb2.snp.makeConstraints { (make) in
            let a = rect(x: 22, y: 410, w: 64, h: 22, UIW: 414, UIH: 911)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3]+10)
        }
        
        adornView = UIView()
        adornView.backgroundColor = UIColor.init(red: 52/255.0, green: 52/255.0, blue: 53/255.0, alpha: 1.0)
        self.view.addSubview(adornView)
        adornView.snp.makeConstraints { (make) in
            let a = rect(x: 10, y: 412, w: 4, h: 18,UIW: 414,UIH: 911 )
        
            print(a)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])
        }
        
        cutView = UIView()
        cutView.backgroundColor = UIColor.init(red: 232/255.0, green: 232/255.0, blue: 232/255.0, alpha: 1.0)
        self.view.addSubview(cutView)
        cutView.snp.makeConstraints { (make) in
            let a = rect(x: 0, y: 384, w: 414, h: 6, UIW: 414, UIH: 911)
            print(a)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])

        }
        
        imageView = UIImageView()
        imageView.image = UIImage(named: "aa5")
        self.view.addSubview(imageView)
        imageView.snp.makeConstraints { (make) in
            let a = rect(x: 0, y: 64, w: 414, h: 220, UIW: 414, UIH: 911)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])
        }
        
        view0 = UIButton()
        view0.setImage(UIImage(named: "aa1"), for: .normal)
        view1 = UIButton()
        view1.setImage(UIImage(named: "aa2"), for: .normal)
        view2 = UIButton()
        view2.setImage(UIImage(named: "aa3"), for: .normal)
        view3 = UIButton()
        view3.setImage(UIImage(named: "aa4"), for: .normal)


        self.view.addSubview(view1)
        self.view.addSubview(view2)
        self.view.addSubview(view3)
        self.view.addSubview(view0)
        lb0 = UILabel()
        lb1 = UILabel()
        lb2 = UILabel()
        lb3 = UILabel()
        lb0.font = UIFont(name: "PingFangSC-Regular", size: 14)

        lb1.font = UIFont(name: "PingFangSC-Regular", size: 14)
        lb2.font = UIFont(name: "PingFangSC-Regular", size: 14)
        lb3.font = UIFont(name: "PingFangSC-Regular", size: 14)
        lb0.adjustsFontForContentSizeCategory = true
        lb1.adjustsFontForContentSizeCategory = true
        lb2.adjustsFontForContentSizeCategory = true
        lb3.adjustsFontForContentSizeCategory = true
        lb0.textAlignment = .center
        lb1.textAlignment = .center
        lb2.textAlignment = .center
        lb3.textAlignment = .center
        lb0.text = "漫画壁纸"
        lb1.text = "漫画视频"
        lb2.text = "主屏"
        lb3.text = "锁屏"
        self.view.addSubview(lb0)
        self.view.addSubview(lb1)
        self.view.addSubview(lb2)
        self.view.addSubview(lb3)
        view0.snp.makeConstraints { (make) in
            let a = rect(x: 30, y: 296, w: 50, h: 50, UIW: 414, UIH: 911)
            print(a)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])
  
        }
        lb0.snp.makeConstraints { (make) in
            let a = center(x: 27, y: 354, w: 56, h: 20, UIW: 414, UIH: 911)
            make.center.equalTo(CGPoint(x: a[0], y: a[1]))
            make.size.equalTo(CGSize(width: a[2]+10, height: a[3]))
            
        }
        view1.snp.makeConstraints { (make) in
            let a = center(x: 131, y: 296, w: 50, h: 50, UIW: 414, UIH: 911)
            make.center.equalTo(CGPoint(x: a[0], y: a[1]))
            make.size.equalTo(CGSize(width: a[2], height: a[3]))

        }
        lb1.snp.makeConstraints { (make) in
            let a = center(x: 128, y: 354, w: 56, h: 20, UIW: 414, UIH: 911)
            make.center.equalTo(CGPoint(x: a[0], y: a[1]))
            make.size.equalTo(CGSize(width: a[2]+10, height: a[3]))

        }
        view2.snp.makeConstraints { (make) in
            let a = center(x: 233, y: 296, w: 50, h: 50, UIW: 414, UIH: 911)
            make.center.equalTo(CGPoint(x: a[0], y: a[1]))
            make.size.equalTo(CGSize(width: a[2], height: a[3]))
        }
        lb2.snp.makeConstraints { (make) in
            let a = center(x: 244, y: 354, w: 28, h: 20, UIW: 414, UIH: 911)
            make.center.equalTo(CGPoint(x: a[0], y: a[1]))
            make.size.equalTo(CGSize(width: a[2]+10, height: a[3]))

        }
        view3.snp.makeConstraints { (make) in
            let a = center(x: 334, y: 296, w: 50, h: 50, UIW: 414, UIH: 911)
            make.center.equalTo(CGPoint(x: a[0], y: a[1]))
            make.size.equalTo(CGSize(width: a[2], height: a[3]))

        }
        lb3.snp.makeConstraints { (make) in
            let a = center(x: 345, y: 354, w: 28, h: 20, UIW: 414, UIH: 911)
            make.center.equalTo(CGPoint(x: a[0], y: a[1]))
            make.size.equalTo(CGSize(width: a[2]+10, height: a[3]))

        }
        view0.tag = 0
        view1.tag = 1
        view2.tag = 2
        view3.tag = 3
        view0.addTarget(self, action: #selector(btFunction), for: .touchUpInside)
        view1.addTarget(self, action: #selector(btFunction), for: .touchUpInside)
        view2.addTarget(self, action: #selector(btFunction), for: .touchUpInside)
        view3.addTarget(self, action: #selector(btFunction), for: .touchUpInside)

    }
    func collectView(){
        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical
        let a = center(x: 8, y: 422, w: 128, h: 227, UIW: 414, UIH: 911)
        layout.itemSize = CGSize(width: a[2], height: a[3])
        layout.minimumLineSpacing = h*8/911
        layout.minimumInteritemSpacing = w*6/414
        layout.sectionInset = UIEdgeInsets(top: 0, left: w*8/414, bottom: h*7/911, right: w*8/414)
        let collectionView = UICollectionView(frame: CGRect.zero,collectionViewLayout: layout)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.isPagingEnabled = false
        collectionView.alwaysBounceVertical = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        //注册数据载体类
        collectionView.register(NSClassFromString("UICollectionViewCell"), forCellWithReuseIdentifier: "itemId")
        self.view.addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) in
            make.top.equalTo(self.view.bounds.size.height*442/911)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        }

        
    }
    @objc func btFunction(bt: UIButton){
        
        switch bt.tag {
        case 0:

            let a1 = ClassImage()
            self.modalPresentationStyle = .fullScreen
            a1.modalPresentationStyle = .fullScreen
            a1.titltText = "漫画壁纸"
            a1.imageArray = [        "https://static.starkos.cn/wallpaper/fensexilie/1.jpg",
            "https://static.starkos.cn/wallpaper/fensexilie/2.jpg",
            "https://static.starkos.cn/wallpaper/fensexilie/3.jpg",
            "https://static.starkos.cn/wallpaper/fensexilie/4.jpg",
            //        "title": "搞怪画风",
            "https://static.starkos.cn/wallpaper/gaoguaihuafeng/1.jpg",
            "https://static.starkos.cn/wallpaper/gaoguaihuafeng/2.jpg",
            "https://static.starkos.cn/wallpaper/gaoguaihuafeng/3.jpg",
            "https://static.starkos.cn/wallpaper/gaoguaihuafeng/4.jpg",
            "https://static.starkos.cn/wallpaper/gaoguaihuafeng/5.jpg"]
            present(a1, animated: true)

        case 1:
            
            let a1 = ClassVideo()
            self.modalPresentationStyle = .fullScreen
            a1.modalPresentationStyle = .fullScreen
            a1.videoArray = [ VideoData(titleName: "如何画一个漫画女孩", imagePath:         "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E4%B8%80%E4%B8%AA%E6%BC%AB%E7%94%BB%E5%A5%B3%E5%AD%A9.png", videoPath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E4%B8%80%E4%B8%AA%E6%BC%AB%E7%94%BB%E5%A5%B3%E5%AD%A9.mp4"),
            VideoData(titleName: "如何画一个男性漫画人物", imagePath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E4%B8%80%E4%B8%AA%E7%94%B7%E6%80%A7%E6%BC%AB%E7%94%BB%E4%BA%BA%E7%89%A9.png", videoPath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E4%B8%80%E4%B8%AA%E7%94%B7%E6%80%A7%E6%BC%AB%E7%94%BB%E4%BA%BA%E7%89%A9.mp4"),
            VideoData(titleName: "如何画漫画人物的侧脸", imagePath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E6%BC%AB%E7%94%BB%E4%BA%BA%E7%89%A9%E7%9A%84%E4%BE%A7%E8%84%B8.png", videoPath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E6%BC%AB%E7%94%BB%E4%BA%BA%E7%89%A9%E7%9A%84%E4%BE%A7%E8%84%B8.mp4"),
            VideoData(titleName: "如何画漫画女人物头部", imagePath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E6%BC%AB%E7%94%BB%E5%A5%B3%E4%BA%BA%E7%89%A9%E5%A4%B4%E9%83%A8.png", videoPath: "https://static.starkos.cn/cartoon/%E5%A6%82%E4%BD%95%E7%94%BB%E6%BC%AB%E7%94%BB%E5%A5%B3%E4%BA%BA%E7%89%A9%E5%A4%B4%E9%83%A8.mp4"),
            VideoData(titleName: "小女孩与龙猫", imagePath: "https://static.starkos.cn/cartoon/%E5%B0%8F%E5%A5%B3%E5%AD%A9%E4%B8%8E%E9%BE%99%E7%8C%AB.png", videoPath: "https://static.starkos.cn/cartoon/%E5%B0%8F%E5%A5%B3%E5%AD%A9%E4%B8%8E%E9%BE%99%E7%8C%AB.mp4"),
            VideoData(titleName: "手绘画教程-如何画漫画少女", imagePath: "https://static.starkos.cn/cartoon/%E6%89%8B%E7%BB%98%E7%94%BB%E6%95%99%E7%A8%8B-%E5%A6%82%E4%BD%95%E7%94%BB%E6%BC%AB%E7%94%BB%E5%B0%91%E5%A5%B3.png", videoPath: "https://static.starkos.cn/cartoon/%E5%B0%8F%E5%A5%B3%E5%AD%A9%E4%B8%8E%E9%BE%99%E7%8C%AB.mp4"),
            VideoData(titleName: "教你如何画好漫画中的角色", imagePath: "https://static.starkos.cn/cartoon/%E6%95%99%E4%BD%A0%E5%A6%82%E4%BD%95%E7%94%BB%E5%A5%BD%E6%BC%AB%E7%94%BB%E4%B8%AD%E7%9A%84%E8%A7%92%E8%89%B2.png", videoPath: "https://static.starkos.cn/cartoon/%E6%95%99%E4%BD%A0%E5%A6%82%E4%BD%95%E7%94%BB%E5%A5%BD%E6%BC%AB%E7%94%BB%E4%B8%AD%E7%9A%84%E8%A7%92%E8%89%B2.mp4"),
            VideoData(titleName: "漫画人物三分钟学会", imagePath: "https://static.starkos.cn/cartoon/%E6%BC%AB%E7%94%BB%E4%BA%BA%E7%89%A9%E4%B8%89%E5%88%86%E9%92%9F%E5%AD%A6%E4%BC%9A.png", videoPath: "https://static.starkos.cn/cartoon/%E6%BC%AB%E7%94%BB%E4%BA%BA%E7%89%A9%E4%B8%89%E5%88%86%E9%92%9F%E5%AD%A6%E4%BC%9A.mp4"),
            VideoData(titleName: "迪迦奥特曼的铅笔画教程", imagePath: "https://static.starkos.cn/cartoon/%E8%BF%A6%E5%A5%A5%E7%89%B9%E6%9B%BC%E7%9A%84%E9%93%85%E7%AC%94%E7%94%BB%E6%95%99%E7%A8%8B.png", videoPath: "https://static.starkos.cn/cartoon/%E8%BF%A6%E5%A5%A5%E7%89%B9%E6%9B%BC%E7%9A%84%E9%93%85%E7%AC%94%E7%94%BB%E6%95%99%E7%A8%8B.mp4"),
            VideoData(titleName: "陈情令肖战简笔", imagePath: "https://static.starkos.cn/cartoon/%E9%99%88%E6%83%85%E4%BB%A4%E8%82%96%E6%88%98%E7%AE%80%E7%AC%94.png", videoPath: "https://static.starkos.cn/cartoon/%E9%99%88%E6%83%85%E4%BB%A4%E8%82%96%E6%88%98%E7%AE%80%E7%AC%94.mp4")
]
            self.present(a1,animated: true )
        case 2:
            let a1 = ClassImage()
            self.modalPresentationStyle = .fullScreen
            a1.modalPresentationStyle = .fullScreen

            a1.titltText = "主屏"
            a1.imageArray = [        "https://static.starkos.cn/wallpaper/ouyujiaren/1.jpg",
            "https://static.starkos.cn/wallpaper/ouyujiaren/2.jpg",
            "https://static.starkos.cn/wallpaper/ouyujiaren/3.jpg",
            "https://static.starkos.cn/wallpaper/ouyujiaren/4.jpg",
            "https://static.starkos.cn/wallpaper/ouyujiaren/5.jpg",
            "https://static.starkos.cn/wallpaper/ouyujiaren/6.jpg",
            "https://static.starkos.cn/wallpaper/ouyujiaren/7.jpg",
            "https://static.starkos.cn/wallpaper/ouyujiaren/8.jpg",
            "https://static.starkos.cn/wallpaper/ouyujiaren/9.jpg"
]
            present(a1, animated: true)

        case 3:
            let a1 = ClassImage()
            self.modalPresentationStyle = .fullScreen
            a1.modalPresentationStyle = .fullScreen

            a1.titltText = "锁屏"
            a1.imageArray = [        "https://static.starkos.cn/wallpaper/qinglvxilie/1.jpg",
            "https://static.starkos.cn/wallpaper/qinglvxilie/2.jpg",
            "https://static.starkos.cn/wallpaper/qinglvxilie/3.jpg",
            "https://static.starkos.cn/wallpaper/qinglvxilie/4.jpg",
            "https://static.starkos.cn/wallpaper/qinglvxilie/5.jpg",
            "https://static.starkos.cn/wallpaper/qinglvxilie/6.jpg",
            "https://static.starkos.cn/wallpaper/qinglvxilie/7.jpg",
            "https://static.starkos.cn/wallpaper/qinglvxilie/8.jpg",
            "https://static.starkos.cn/wallpaper/qinglvxilie/9.jpg"]
            present(a1, animated: true)

        default:
            print(1)
            
        }

    }
}

extension ViewController: UICollectionViewDelegateFlowLayout,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        everyDayCommended.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemId", for: indexPath)
//        cell.backgroundColor = .red
        let view11 = UIImageView()
        view11.frame.size = cell.frame.size
        view11.downloadedFrom(link: everyDayCommended[indexPath.row])
//            = everyDayCommended[indexPath.row]
//        view11.backgroundColor = .red
        cell.addSubview(view11)
        return cell
    }
    
    func  collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let catImage = ImageCat()
        catImage.assetPath = everyDayCommended[indexPath.row]
        self.modalPresentationStyle = .fullScreen
        catImage.modalPresentationStyle = .fullScreen
        self.present(catImage,animated: true)
    }
    //动态设置大小
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let a = center(x: 8, y: 422, w: 128, h: 227, UIW: 414, UIH: 911)
//        return CGSize(width: a[2]-10, height: a[3]-10)
//    }
    
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
