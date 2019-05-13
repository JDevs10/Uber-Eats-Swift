//
//  SecondViewController.swift
//  UberEats
//
//  Created by etude on 24/04/2019.
//  Copyright © 2019 etude. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var categories = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let c1 = ["numc":"1", "cetegorie":"Entrées"]
        let c2 = ["numc":"2", "cetegorie":"Plats"]
        let c3 = ["numc":"3", "cetegorie":"Potages"]
        let c4 = ["numc":"4", "cetegorie":"Desserts"]
        let c5 = ["numc":"5", "cetegorie":"Boissons"]
        
        categories = [c1,c2,c3,c4,c5]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellule = tableView.dequeueReusableCell(withIdentifier: "categoryBlock", for: indexPath) as! CategoryTableViewCell
        let categoryName = categories[indexPath.row]["cetegorie"]
        //cellule.textLabel?.text = "category \(categoryName!)"
        
        cellule.categoryCellNomber.text = categoryName
        
        return cellule
    }
    
}

