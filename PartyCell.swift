//
//  PartyCell.swift
//  tableSegue
//
//  Created by better on 12/27/16.
//  Copyright © 2016 sane men. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var videoLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(imageURL: String, title: String) {
        self.videoLabel.text = title
        
        DispatchQueue.global().async {
            let url = URL(string: imageURL)
            do {
                let data = try Data(contentsOf: url!)
                DispatchQueue.global().sync {
                    self.thumbImage.image = UIImage(data: data)
                }
            } catch {
            }
        }
    }
}
