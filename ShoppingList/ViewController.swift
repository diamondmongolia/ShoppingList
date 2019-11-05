//
//  ViewController.swift
//  ShoppingList
//
//  Created by Alexandra Englert on 05.11.19.
//  Copyright © 2019 Alexandra Englert. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel!.text = "Hello World"
        return cell
    }
}
