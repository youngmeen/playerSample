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
import MaterialComponents.MaterialBottomSheet

class VideoSampleController: UIViewController {
    
    @IBOutlet weak var player: BMCustomPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player.backBlock = { [unowned self] (isFullScreen) in
            if isFullScreen == true {
                return
            }
            let _ = self.dismiss(animated: true, completion: nil)            
        }
        
        let assets =
            BMPlayerResource(url: URL(string:"https://www.w3schools.com/html/mov_bbb.mp4")!, name: "", cover: nil)
        player.setVideo(resource: assets)
    }
    @IBAction func showBottomSheet(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "BottomSheet") as! BottomSheet
        let bottomSheet: MDCBottomSheetController = MDCBottomSheetController(contentViewController: vc)
        bottomSheet.preferredContentSize = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height / 2)
        present(bottomSheet, animated: true, completion: nil)
        
    }
}
