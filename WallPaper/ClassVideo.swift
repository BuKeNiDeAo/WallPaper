//
//  ClassVideo.swift
//  WallPaper
//
//  Created by 刘胜 on 2020/7/24.
//  Copyright © 2020 liusheng. All rights reserved.
//

import UIKit
import SnapKit

class ClassVideo: UIViewController {
    var videoArray: [VideoData]!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.mainView()
        self.colleView()
    }
    func mainView(){
        let imageView = UIImageView()
        imageView.image = UIImage(named: "aa6")
        imageView.contentMode = .scaleToFill

        self.view.addSubview(imageView)
        imageView.snp.makeConstraints { (make) in
            let a = rect(x: 0, y: 0, w: 414, h: 220, UIW: 414, UIH: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])

        }
        
        let bt = UIButton()
        bt.setImage(UIImage(named: "aa_back"), for: .normal)
        bt.addTarget(self, action: #selector(backFunction), for: .touchUpInside)
        self.view.addSubview(bt)
        bt.snp.makeConstraints { (make) in
            let a = rect(x: 8, y: 20, w: 24, h: 24, UIW: 414, UIH: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])

        }
        
        let lb0 = UILabel()
        lb0.text = "Making commics 自己动手做漫画"
        lb0.textColor = .black
        lb0.numberOfLines = 0
        lb0.textAlignment = .left
        lb0.font = UIFont.init(name: "PingFangSC-Regular", size: 24)
        lb0.textColor = UIColor.init(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        self.view.addSubview(lb0)
        lb0.snp.makeConstraints { (make) in
            let a = rect(x: 8, y: 228, w: 317, h: 33, UIW: 414, UIH: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])

        }
        let lb1 = UILabel()
        lb1.text = "开心的画 创作是件令人开心的事,画漫画是个有趣的事,做自己想做 的事既开心。"
        lb1.numberOfLines = 0
        lb1.textAlignment = .left
        lb1.font = UIFont.init(name: "PingFangSC-Thin", size: 14)
        lb1.textColor = UIColor.init(red: 102/255, green: 102/255, blue: 102/255, alpha: 1)
        self.view.addSubview(lb1)
        lb1.snp.makeConstraints { (make) in
            let a = rect(x: 8, y: 271, w: 394, h: 40, UIW: 414, UIH: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])

        }
        
    }
    func colleView(){
        let layouot = UICollectionViewFlowLayout()
        let a = center(x: 8, y: 331, w: 197, h: 110, UIW: 414, UIH: 736)
        layouot.itemSize = CGSize(width: a[2]-1, height: a[3])
        layouot.minimumLineSpacing = h*4/736
        layouot.minimumInteritemSpacing = w*4/414
        layouot.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

        let collec = UICollectionView(frame: CGRect.zero, collectionViewLayout: layouot)
        collec.showsVerticalScrollIndicator = false
        collec.backgroundColor = .white
        collec.delegate = self
        collec.dataSource = self
        collec.register(NSClassFromString("UICollectionViewCell"), forCellWithReuseIdentifier: "Id123")
        self.view.addSubview(collec)
        collec.snp.makeConstraints { (make) in
            let a = rect(x: 9, y: 331, w: 396, h: 405, UIW: 414, UIH: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])

            
        }
    }
    @objc func backFunction(){
        self.dismiss(animated: true, completion: nil)

    }

}
extension ClassVideo: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        videoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Id123", for: indexPath)
        cell.layer.cornerRadius = 4
        let view11 = UIImageView()
        view11.frame.size = cell.frame.size
        view11.downloadedFrom(link: videoArray[indexPath.row].imagePath)
        
        let lb = UILabel()
        lb.text = videoArray[indexPath.row].titleName
        lb.numberOfLines = 0
        lb.textAlignment = .center
        lb.textColor = .white
        lb.font = UIFont.init(name: "PingFangSC-Thin", size: 14)
        let a = center(x: 45, y: 490, w: 126, h: 20, UIW: 414, UIH: 736)
        lb.center = CGPoint(x: cell.frame.width*37/197, y: cell.frame.height*45/110)
        lb.frame.size = CGSize(width: a[2]+10, height: a[3]*2)
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "aa_stop")
        let b = center(x: 177, y: 413, w: 20, h: 20, UIW: 414, UIH: 736)
        imageView.center = CGPoint(x: cell.frame.width*169/197, y: cell.frame.height*82/110)
        imageView.frame.size = CGSize(width: b[2], height: b[3])
        cell.addSubview(view11)
        cell.addSubview(imageView)
        cell.addSubview(lb)
        return cell
    }
    func  collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let videoPlay = Play()
        videoPlay.videoPath = videoArray[indexPath.row].videoPath
//        self.modalPresentationStyle = .fullScreen
//        videoPlay.modalPresentationStyle = .fullScreen
        self.present(videoPlay,animated: true)
    }
    
}
