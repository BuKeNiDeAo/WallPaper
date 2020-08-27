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
    var vv_videoPath: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        let remoteURL = URL(string: vv_videoPath)
        let player = AVPlayer.init(url: remoteURL!)
        self.player = player
        self.player!.play()
    }
}
