//
//  ImageCat.swift
//  WallPaper
//
//  Created by 刘胜 on 2020/7/24.
//  Copyright © 2020 liusheng. All rights reserved.
//

import UIKit
import SnapKit

class FF_CatImage: UIViewController {
    var vv_showImageView:UIImageView!
    var vv_assetPath:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.modalPresentationStyle = .fullScreen
        ff_initShowView()
        ff_initBackBtn()
        ff_initSaveBtn()
    }
    
    func ff_initShowView() {
        vv_showImageView = UIImageView()
        vv_showImageView.downloadedFrom(link: vv_assetPath)
        self.view.addSubview(vv_showImageView)
        vv_showImageView.snp.makeConstraints { (make) in
            make.edges.equalTo(0)
        }
    }
    
    func ff_initBackBtn() {
        let vv_backBtn = UIButton()
        vv_backBtn.setImage(UIImage(named: "aa_back"), for: .normal)
        vv_backBtn.addTarget(self, action: #selector(ff_setBackSave), for: .touchUpInside)
        vv_backBtn.tag = 0
        self.view.addSubview(vv_backBtn)
        vv_backBtn.snp.makeConstraints { (make) in
            let a = ff_getRectlocation(x: 8, y: 30, width: 24, heigh: 24, templateWidth: 414, templateHeigh: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])
        }
    }
    
    func ff_initSaveBtn() {
        let vv_saveBtn = UIButton()
        vv_saveBtn.tag = 1
        vv_saveBtn.titleLabel?.font = UIFont.init(name: "PingFangSC-Thin", size: 16)
        vv_saveBtn.setTitle("保存到相册", for: .normal)
        vv_saveBtn.backgroundColor = UIColor.init(displayP3Red: 0/255, green: 0/255, blue: 0/255, alpha: 0.69)
        vv_saveBtn.addTarget(self, action: #selector(ff_setBackSave), for: .touchUpInside)
        self.view.addSubview(vv_saveBtn)
        vv_saveBtn.snp.makeConstraints { (make) in
            let a = ff_getRectlocation(x: 147, y: 637, width: 120, heigh: 50, templateWidth: 414, templateHeigh: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])
        }
    }
    
    @objc func ff_setBackSave(bt: UIButton) {
        if bt.tag == 1 {
            UIImageWriteToSavedPhotosAlbum(self.vv_showImageView.image!, self,nil,nil)
        }
        dismiss(animated: true, completion: nil)
    }
}
