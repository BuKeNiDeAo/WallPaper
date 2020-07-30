//
//  ImageCat.swift
//  WallPaper
//
//  Created by 刘胜 on 2020/7/24.
//  Copyright © 2020 liusheng. All rights reserved.
//

import UIKit
import SnapKit

class ImageCat: UIViewController {
    var imageView:UIImageView!
    var assetPath:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.modalPresentationStyle = .fullScreen
        self.mainView()
        self.bt()
    }
    func mainView(){
        imageView = UIImageView()
        imageView.downloadedFrom(link: assetPath)
        self.view.addSubview(imageView)
        imageView.snp.makeConstraints { (make) in
            make.edges.equalTo(0)
        }
        
    }
    func bt(){
        let bt0 = UIButton()
        bt0.setImage(UIImage(named: "aa_back"), for: .normal)
        bt0.addTarget(self, action: #selector(backSave), for: .touchUpInside)
        bt0.tag = 0
        self.view.addSubview(bt0)
        bt0.snp.makeConstraints { (make) in
            let a = rect(x: 8, y: 30, w: 24, h: 24, UIW: 414, UIH: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])

        }
        let bt1 = UIButton()
        bt1.tag = 1
        bt1.titleLabel?.font = UIFont.init(name: "PingFangSC-Thin", size: 16)
        bt1.setTitle("保存到相册", for: .normal)
        bt1.backgroundColor = UIColor.init(displayP3Red: 0/255, green: 0/255, blue: 0/255, alpha: 0.69)
        bt1.addTarget(self, action: #selector(backSave), for: .touchUpInside)
        self.view.addSubview(bt1)
        bt1.snp.makeConstraints { (make) in
            let a = rect(x: 147, y: 637, w: 120, h: 50, UIW: 414, UIH: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])
        }
    }
    @objc func backSave(bt: UIButton){
        if bt.tag == 1 {
            UIImageWriteToSavedPhotosAlbum(self.imageView.image!, self,nil,nil)
        }
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
