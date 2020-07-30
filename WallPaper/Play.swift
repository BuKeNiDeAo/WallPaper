//
//  Play.swift
//  WallPaper
//
//  Created by 刘胜 on 2020/7/25.
//  Copyright © 2020 liusheng. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class Play: AVPlayerViewController {
    var videoPath: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        let remoteURL = URL(string: videoPath)
        let player = AVPlayer.init(url: remoteURL!)
        
        self.player = player
        self.player!.play()
        // Do any additional setup after lkoading the view.
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
