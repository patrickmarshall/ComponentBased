//
//  EmptyCell.swift
//  ComponentBased
//
//  Created by Patrick Marshall on 24/10/18.
//  Copyright © 2018 Patrick Marshall. All rights reserved.
//

import UIKit

class EmptyCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var height: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(height: CGFloat,
               color: UIColor? = .white) {
        
        self.height.constant = height
        view.backgroundColor = color
    }
    
    func item(height: CGFloat,
              color: UIColor? = .white) -> UITableViewCell {
        
        self.height.constant = height
        view.backgroundColor = color
        return self
    }
}
