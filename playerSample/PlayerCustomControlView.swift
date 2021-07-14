//
//  PlayerCustomControlView.swift
//  playerSample
//
//  Created by SGRwork on 2021/07/14.
//

import Foundation
import BMPlayer

class PlayerCustomConrolView: BMPlayerControlView {
    
    var playbackRateButton = UIButton(type: .custom)
    
    override func customizeUIComponents() {
        mainMaskView.backgroundColor = UIColor.clear
        topMaskView.backgroundColor = UIColor.black
    }
}
