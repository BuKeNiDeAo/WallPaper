//
//  ClassVideo.swift
//  WallPaper
//
//  Created by 刘胜 on 2020/7/24.
//  Copyright © 2020 liusheng. All rights reserved.
//

import UIKit
import SnapKit

class FF_PreviewVideoVC: UIViewController {
    var vv_videoArrayURL: [VideoData]!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        ff_initMainImageView()
        ff_initBackBtn()
        ff_initTitleLableView()
        ff_initCollection()
    }
    
    func ff_initMainImageView() {
        let vv_imageView = UIImageView()
        vv_imageView.image = UIImage(named: "aa6")
        vv_imageView.contentMode = .scaleToFill
        self.view.addSubview(vv_imageView)
        vv_imageView.snp.makeConstraints { (make) in
            let a = ff_getRectlocation(x: 0, y: 0, width: 414, heigh: 220, templateWidth: 414, templateHeigh: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])
        }
    }
    
    func ff_initBackBtn() {
        let vv_backBtn = UIButton()
        vv_backBtn.setImage(UIImage(named: "aa_back"), for: .normal)
        vv_backBtn.addTarget(self, action: #selector(vv_setBackBtn), for: .touchUpInside)
        self.view.addSubview(vv_backBtn)
        vv_backBtn.snp.makeConstraints { (make) in
            let a = ff_getRectlocation(x: 8, y: 20, width: 24, heigh: 24, templateWidth: 414, templateHeigh: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])
        }
    }
    
    func ff_initTitleLableView() {
        let vv_mainTitleLb = UILabel()
        vv_mainTitleLb.text = "Making commics 自己动手做漫画"
        vv_mainTitleLb.textColor = .black
        vv_mainTitleLb.numberOfLines = 0
        vv_mainTitleLb.textAlignment = .left
        vv_mainTitleLb.font = UIFont.init(name: "PingFangSC-Regular", size: 24)
        vv_mainTitleLb.textColor = UIColor.init(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        self.view.addSubview(vv_mainTitleLb)
        vv_mainTitleLb.snp.makeConstraints { (make) in
            let a = ff_getRectlocation(x: 8, y: 228, width: 317, heigh: 33, templateWidth: 414, templateHeigh: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])
        }
        
        let vv_assistantTitleLb = UILabel()
        vv_assistantTitleLb.text = "开心的画 创作是件令人开心的事,画漫画是个有趣的事,做自己想做 的事既开心。"
        vv_assistantTitleLb.numberOfLines = 0
        vv_assistantTitleLb.textAlignment = .left
        vv_assistantTitleLb.font = UIFont.init(name: "PingFangSC-Thin", size: 14)
        vv_assistantTitleLb.textColor = UIColor.init(red: 102/255, green: 102/255, blue: 102/255, alpha: 1)
        self.view.addSubview(vv_assistantTitleLb)
        vv_assistantTitleLb.snp.makeConstraints { (make) in
            let a = ff_getRectlocation(x: 8, y: 271, width: 394, heigh: 40, templateWidth: 414, templateHeigh: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])
        }
    }
    
    func ff_initCollection() {
        let layouot = UICollectionViewFlowLayout()
        let layourSize = ff_centerLocation(x: 8, y: 331, width: 197, heigh: 110, templateWidth: 414, templateHeigh: 736)
        layouot.itemSize = CGSize(width: layourSize[2]-1, height: layourSize[3])
        layouot.minimumLineSpacing = vv_screenHeight * 4 / 736
        layouot.minimumInteritemSpacing = vv_screenWidth * 4 / 414
        layouot.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

        let vv_previewVideoView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layouot)
        vv_previewVideoView.showsVerticalScrollIndicator = false
        vv_previewVideoView.backgroundColor = .white
        vv_previewVideoView.delegate = self
        vv_previewVideoView.dataSource = self
        vv_previewVideoView.register(NSClassFromString("UICollectionViewCell"), forCellWithReuseIdentifier: "Id123")
        self.view.addSubview(vv_previewVideoView)
        vv_previewVideoView.snp.makeConstraints { (make) in
            let a = ff_getRectlocation(x: 9, y: 331, width: 396, heigh: 405, templateWidth: 414, templateHeigh: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])
        }
    }
    
    @objc func vv_setBackBtn() {
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension FF_PreviewVideoVC: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        vv_videoArrayURL.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Id123", for: indexPath)
        cell.layer.cornerRadius = 4
        let vv_coverView = UIImageView()
        vv_coverView.frame.size = cell.frame.size
        vv_coverView.downloadedFrom(link: vv_videoArrayURL[indexPath.row].imagePath)
        
        let vv_titleLb = UILabel()
        vv_titleLb.text = vv_videoArrayURL[indexPath.row].titleName
        vv_titleLb.numberOfLines = 0
        vv_titleLb.textAlignment = .center
        vv_titleLb.textColor = .white
        vv_titleLb.font = UIFont.init(name: "PingFangSC-Thin", size: 14)
        let vv_titleLbSize = ff_centerLocation(x: 45, y: 490, width: 126, heigh: 20, templateWidth: 414, templateHeigh: 736)
        vv_titleLb.center = CGPoint(x: cell.frame.width*37/197, y: cell.frame.height*45/110)
        vv_titleLb.frame.size = CGSize(width: vv_titleLbSize[2]+10, height: vv_titleLbSize[3]*2)
        
        let vv_adornView = UIImageView()
        vv_adornView.image = UIImage(named: "aa_stop")
        let vv_adornViewSize = ff_centerLocation(x: 177, y: 413, width: 20, heigh: 20, templateWidth: 414, templateHeigh: 736)
        vv_adornView.center = CGPoint(x: cell.frame.width*169/197, y: cell.frame.height*82/110)
        vv_adornView.frame.size = CGSize(width: vv_adornViewSize[2], height: vv_adornViewSize[3])
        cell.addSubview(vv_coverView)
        cell.addSubview(vv_adornView)
        cell.addSubview(vv_titleLb)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let videoPlay = Play()
        videoPlay.vv_videoPath = vv_videoArrayURL[indexPath.row].videoPath
        self.present(videoPlay,animated: true)
    }
    
}
