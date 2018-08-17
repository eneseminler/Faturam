//
//  RoundedButton.swift
//  Faturam
//
//  Created by Enes EMINLER on 5.06.2018.
//  Copyright © 2018 Enes EMINLER. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 1/UIScreen.main.nativeScale
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = frame.height/2
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }
    
}
