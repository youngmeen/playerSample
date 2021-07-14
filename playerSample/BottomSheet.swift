//
//  BottomSheet.swift
//  playerSample
//
//  Created by developer on 2021/07/14.
//

import Foundation
import WebKit

class BottomSheet: ViewController {
    @IBOutlet weak var webView: WKWebView!


    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let url : URL! = URL(string: "https://www.google.com/")
        let request = URLRequest(url: url)
        self.webView.load(request)
    }
}
