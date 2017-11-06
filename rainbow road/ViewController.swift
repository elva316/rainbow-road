//
//  ViewController.swift
//  rainbow road
//
//  Created by elva wang on 11/5/17.
//  Copyright © 2017 elva wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int {
        tableView.rowHeight = 120
        return 6
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        cell.textLabel?.text = tableContent[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "rainbowCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }

}

