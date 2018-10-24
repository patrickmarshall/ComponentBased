//
//  SecondViewController.swift
//  ComponentBased
//
//  Created by Patrick Marshall on 24/10/18.
//  Copyright © 2018 Patrick Marshall. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func move(_ sender: Any) {
        let vc = InheritedViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
