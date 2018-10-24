//
//  TextCell.swift
//  ComponentBased
//
//  Created by Patrick Marshall on 24/10/18.
//  Copyright © 2018 Patrick Marshall. All rights reserved.
//

import UIKit

class TextCell: UITableViewCell {
    enum Mode {
        case normal
        case secure
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentText: UITextField!
    var onType: StringClosure?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func textEditingChange(_ sender: Any) {
        guard let onType = onType, let text = self.contentText.text else { return }
        onType(text)
    }
    
    func setup(mode: Mode,
               title: String,
               placeholder: String? = nil,
               onType: StringClosure? = nil) {
        switch mode {
        case .normal:
            contentText.isSecureTextEntry = false
        case .secure:
            contentText.isSecureTextEntry = true
        }
        
        self.onType = onType
        titleLabel.text = title
        contentText.placeholder = placeholder
    }
}
