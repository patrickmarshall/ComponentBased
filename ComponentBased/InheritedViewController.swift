//
//  InheritedViewController.swift
//  ComponentBased
//
//  Created by Patrick Marshall on 24/10/18.
//  Copyright © 2018 Patrick Marshall. All rights reserved.
//

import UIKit

class InheritedViewController: BaseTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTable()
        appendItem()
    }
    
    func appendItem() {
        let username = tableView.dequeueReusableCell(withIdentifier: "TextCell") as! TextCell
        username.setup(mode: .normal,
                       title: "Username",
                       placeholder: "patrickmarshall",
                       onType: { (string) in
                        print(string) }
                       )
        
        let line = tableView.dequeueReusableCell(withIdentifier: "EmptyCell") as! EmptyCell
        line.setup(height: 2,
                   color: .black)
        
        let line3 = EmptyCell().item(height: 20)
        
        let password = tableView.dequeueReusableCell(withIdentifier: "TextCell") as! TextCell
        password.setup(mode: .secure,
                        title: "Password")
        
        let line2 = tableView.dequeueReusableCell(withIdentifier: "EmptyCell") as! EmptyCell
        line2.setup(height: 6,
                   color: .darkGray)
        
        cells.append(contentsOf: [username,
                                  line,
                                  password,
                                  line3])
        
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = ThirdViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
