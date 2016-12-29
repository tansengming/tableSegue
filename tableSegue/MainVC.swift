//
//  ViewController.swift
//  tableSegue
//
//  Created by better on 12/23/16.
//  Copyright © 2016 sane men. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var mainTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        mainTable.delegate = self
        mainTable.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            cell.updateUI(imageURL: "https://pbs.twimg.com/profile_images/378800000822867536/3f5a00acf72df93528b6bb7cd0a4fd0c.jpeg", title: "title!!")
            return cell
        } else {
            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let embedHtml = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/km2OPUctni4\" frameborder=\"0\" allowfullscreen></iframe>"
        performSegue(withIdentifier: "VideoVC", sender: embedHtml)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let html = sender as? String {
                destination.embedHtml = html
            }
        }
    }
}
