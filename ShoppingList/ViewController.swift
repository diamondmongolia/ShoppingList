//
//  ViewController.swift
//  ShoppingList
//
//  Created by Alexandra Englert on 05.11.19.
//  Copyright © 2019 Alexandra Englert. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemCount: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    
}

class ViewController: UIViewController, UITableViewDataSource {
    
    let itemName = ["Apfel", "Banane", "Orange"]
    let itemCount = [4, 10, 3]
    let itemImage = ["apfel.jpg", "banane.jpg", "orange.jpeg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "custom")
        
    }

    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CustomTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomTableViewCell
        
        cell.itemName.text = itemName[indexPath.row]
        cell.itemCount.text = "Count: \(itemCount[indexPath.row])"
        cell.imageView?.image = UIImage(named:itemImage[indexPath.row])
        
        return cell
    }
}
