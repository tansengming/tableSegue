//
//  VideoVC.swift
//  tableSegue
//
//  Created by better on 12/27/16.
//  Copyright © 2016 sane men. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    @IBOutlet weak var VideoView: UIWebView!
    @IBOutlet weak var VideoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        VideoView.loadHTMLString("https://google.com", baseURL: nil)
        VideoLabel.text = "Label!!!"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
