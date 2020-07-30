//
//  ClassImage.swift
//  WallPaper
//
//  Created by 刘胜 on 2020/7/24.
//  Copyright © 2020 liusheng. All rights reserved.
//

import UIKit

class ClassImage: UIViewController {
    var imageArray: [String]!
    var titltText:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.collection()
        self.mainView()
    }
    func collection(){
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = h*8/736
        layout.minimumInteritemSpacing = w*6/414
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

        let a = center(x: 8, y: 73, w: 128, h: 215.66, UIW: 414, UIH: 736)
        layout.itemSize = CGSize(width: a[2], height: a[3])
        print(a[3])
        let collec = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collec.backgroundColor = .white
        collec.showsVerticalScrollIndicator = false
        collec.delegate = self
        collec.dataSource = self
        collec.register(NSClassFromString("UICollectionViewCell"), forCellWithReuseIdentifier: "Id123")
        self.view.addSubview(collec)
        collec.snp.makeConstraints { (make) in
            let a = rect(x: 9, y: 73, w: 396, h: 663, UIW: 414, UIH: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])

        }
    }
    func mainView(){
        let lb = UILabel()
        lb.text = titltText
        lb.font = UIFont.init(name: "PingFangSC-Regular", size: 16)
        lb.numberOfLines = 0
        lb.textAlignment = .center
        self.view.addSubview(lb)
        lb.snp.makeConstraints { (make) in
            let a = center(x: 175, y: 31, w: 64, h: 22, UIW: 414, UIH: 736)
            make.center.equalTo(CGPoint(x: a[0], y: a[1]))
            make.size.equalTo(CGSize(width: a[2]+10, height: a[3]))
        }
        
        let bt = UIButton()
        bt.setImage(UIImage(named: "aa_return"), for: .normal)
        bt.addTarget(self, action: #selector(backfunction), for: .touchUpInside)
        self.view.addSubview(bt)
        bt.snp.makeConstraints { (make) in
            let a = rect(x: 8, y: 32, w: 20, h: 20, UIW: 414, UIH: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])

            
        }
        let view1 = UIView()
        view1.backgroundColor = UIColor.init(red: 237/255, green: 237/255, blue: 237/255, alpha: 1.0)
        self.view.addSubview(view1)
        view1.snp.makeConstraints { (make) in
            let a = rect(x: 0, y: 64, w: 414, h: 1, UIW: 414, UIH: 736)
            make.top.equalTo(a[0])
            make.bottom.equalTo(a[1])
            make.left.equalTo(a[2])
            make.right.equalTo(a[3])

        }
    }
    @objc func backfunction(){
        self.dismiss(animated: true, completion: nil)
    }

}
extension ClassImage: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Id123", for: indexPath)
                let view11 = UIImageView()
                view11.frame.size = cell.frame.size
                view11.downloadedFrom(link: imageArray[indexPath.row])
                cell.addSubview(view11)
                return cell
    }
    func  collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let catImage = ImageCat()
        catImage.assetPath = imageArray[indexPath.row]
        self.modalPresentationStyle = .fullScreen
        catImage.modalPresentationStyle = .fullScreen
        self.present(catImage,animated: true)
    }
    
}
