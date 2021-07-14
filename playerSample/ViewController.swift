//
//  ViewController.swift
//  playerSample
//
//  Created by SGRwork on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func moveSamplePage(_ sender: Any) {
        self.performSegue(withIdentifier: "gotoSample", sender: nil)
    }
    
}

