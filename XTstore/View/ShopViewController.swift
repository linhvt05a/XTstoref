//
//  ShopViewController.swift
//  XTstore
//
//  Created by admin on 11/19/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {

    var tableview = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableview)
        setupTableview()
    }
    

    func setupTableview(){
        tableview.delegate = self
        tableview.dataSource = self
    }
}

extension ShopViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

extension ShopViewController: UITableViewDelegate {
    
}
