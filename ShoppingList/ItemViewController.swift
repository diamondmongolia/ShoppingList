//
//  ItemViewController.swift
//  ShoppingList
//
//  Created by Alexandra Englert on 11.11.19.
//  Copyright © 2019 Alexandra Englert. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    @IBOutlet weak var itenName: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemCount: UILabel!
    
    var name = ""
    var image = ""
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.itenName.text = name
        self.itemImage.image = UIImage(named: image)
        self.itemCount.text = "Anzahl: \(count)"

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func returnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
