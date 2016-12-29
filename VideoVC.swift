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
        let embed = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/km2OPUctni4\" frameborder=\"0\" allowfullscreen></iframe>"
        VideoView.loadHTMLString(embed, baseURL: nil)
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
