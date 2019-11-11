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

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let itemName = ["Apfel", "Banane", "Orange"]
    let itemCount = [4, 10, 3]
    let imageName = ["apfel.jpg", "banane.jpg", "orange.jpeg"]
    
    var selectedIndex = Int()
    
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
        cell.imageView?.image = UIImage(named:imageName[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedIndex = indexPath.row
        performSegue(withIdentifier: "item", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "item" {
            let vc : ItemViewController = segue.destination as! ItemViewController
            
            vc.name = itemName[selectedIndex]
            vc.count = itemCount[selectedIndex]
            vc.image = imageName[selectedIndex]
                        
        }
    }
}
