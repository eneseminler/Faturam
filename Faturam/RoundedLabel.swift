//
//  RoundedLabel.swift
//  Faturam
//
//  Created by Enes EMINLER on 6.06.2018.
//  Copyright © 2018 Enes EMINLER. All rights reserved.
//

import UIKit


class RoundedLabel: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 1/UIScreen.main.nativeScale
        
        layer.cornerRadius = frame.height/2
    }
}
