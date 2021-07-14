//
//  BMCustomPlayer.swift
//  playerSample
//
//  Created by developer on 2021/07/14.
//

import Foundation
import BMPlayer

class BMCustomPlayer: BMPlayer {
    override func storyBoardCustomControl() -> BMPlayerControlView? {
        return PlayerCustomConrolView()
    }
}
