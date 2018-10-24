//
//  ThirdViewController.swift
//  ComponentBased
//
//  Created by Patrick Marshall on 24/10/18.
//  Copyright © 2018 Patrick Marshall. All rights reserved.
//

import UIKit

class ThirdViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTable()
        appendItem()
    }
    
    func appendItem() {
        let textCell = tableView.dequeueReusableCell(withIdentifier: "TextCell") as! TextCell
        textCell.setup(mode: .normal,
                       title: "Username",
                       placeholder: "hehehe")
        
        let textCell2 = tableView.dequeueReusableCell(withIdentifier: "TextCell") as! TextCell
        textCell2.setup(mode: .secure,
                        title: "Password")
        
        cells.append(contentsOf: [textCell,
                                  textCell2])
        
        tableView.reloadData()
    }
}
