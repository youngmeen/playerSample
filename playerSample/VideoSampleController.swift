//
//  VideoSampleController.swift
//  playerSample
//
//  Created by SGRwork on 2021/07/14.
//

import Foundation
import UIKit
import BMPlayer
import AVFoundation
import NVActivityIndicatorView

class VideoSampleController: UIViewController {
    
    @IBOutlet weak var playerView: UIView!
    var player : BMPlayer!
    var asset : BMPlayerResource!
    var url : URL!
    var controller : BMPlayerControlView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        releasePlayerManager()
        setUpPlayerManager()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        player.autoPlay()
    }
    
    func releasePlayerManager() -> Void{
        BMPlayerConf.allowLog = false
        BMPlayerConf.shouldAutoPlay = true
        
    }
    
    func setUpPlayerManager() {
        url = URL(string: "https://www.w3schools.com/html/mov_bbs.mp4")
        self.controller = BMPlayerControlView()
        
        self.player = BMPlayer(customControlView: controller)
        
        self.playerView.addSubview(player)
        
        asset = BMPlayerResource(url: url)
            //player.seek(30)
        self.player.setVideo(resource: asset)

        self.player.play()
    }
}
