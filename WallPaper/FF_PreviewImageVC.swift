//
//  FF_CatImageVC.swift
//  WallPaper
//
//  Created by 刘胜 on 2020/8/26.
//  Copyright © 2020 liusheng. All rights reserved.
//

import Foundation
import UIKit

class FF_PreviewImageVC: UIViewController {
    var vv_imageArrayPath: [String]!
    var vv_titltText: String!
    var vv_navigationBarHeigh: CGFloat!
    var vv_statusBarHeight: CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        ff_initStatusNavigationHeight()
        ff_setNavigation()
        ff_initPreviewView()
    }
    
    func ff_initStatusNavigationHeight() {
        vv_navigationBarHeigh = self.navigationController?.navigationBar.frame.height
        vv_statusBarHeight = UIApplication.shared.statusBarFrame.height
    }

    
    func ff_setNavigation(){
        self.title = vv_titltText
        self.edgesForExtendedLayout = UIRectEdge()
    }
    
    func ff_initPreviewView(){
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = vv_screenHeight * 8 / 736
        layout.minimumInteritemSpacing = vv_screenWidth * 6 / 414
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let layoutSize = ff_autoLayoutCenter(x: 0, y: 0, width: 128, height: 216, actualWidth: vv_screenWidth, actualHeight: vv_screenHeight - vv_navigationBarHeigh - vv_statusBarHeight, templateWidth: 414, templateHeigh: 736 - 64)
        layout.itemSize = CGSize(width: layoutSize[2], height: layoutSize[3])
        layout.sectionInset = UIEdgeInsets(top: 0, left: vv_screenWidth * 8 / 414, bottom: vv_screenHeight * 7 / 736, right: vv_screenWidth * 8 / 414)

        let collecView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collecView.contentInsetAdjustmentBehavior = .never
        collecView.backgroundColor = .white
        collecView.showsVerticalScrollIndicator = false
        collecView.delegate = self
        collecView.dataSource = self
        collecView.register(NSClassFromString("UICollectionViewCell"), forCellWithReuseIdentifier: "Id123")
        self.view.addSubview(collecView)
        collecView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
}

extension FF_PreviewImageVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        vv_imageArrayPath.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Id123", for: indexPath)
                let view11 = UIImageView()
                view11.frame.size = cell.frame.size
                view11.downloadedFrom(link: vv_imageArrayPath[indexPath.row])
                cell.addSubview(view11)
                return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let catImage = FF_CatImage()
        catImage.vv_assetPath = vv_imageArrayPath[indexPath.row]
        self.modalPresentationStyle = .fullScreen
        catImage.modalPresentationStyle = .fullScreen
        self.present(catImage,animated: true)
    }
    
}
