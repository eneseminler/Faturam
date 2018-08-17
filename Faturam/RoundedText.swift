//
//  TextRounded.swift
//  Faturam
//
//  Created by Enes EMINLER on 6.06.2018.
//  Copyright © 2018 Enes EMINLER. All rights reserved.
//

import UIKit


class RoundedText: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 1/UIScreen.main.nativeScale
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = frame.height/2
        
    }
}
