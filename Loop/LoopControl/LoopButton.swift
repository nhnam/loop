//
//  LoopButton.swift
//  Loop
//
//  Created by Tan Vu on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

class LoopButton: UIButton {
    override func awakeFromNib() {
        setBorderButton()
        setFont()
    }

    func setBorderButton() {
        layer.borderWidth = 1.0
        layer.borderColor = appConfig.appColor.cgColor
        layer.masksToBounds = true
    }
    
    func setFont() {
        if let attributes = self.titleLabel?.attributedText {
            let mutableAttributes = NSAttributedString(attributedString: attributes)
            let font = UIFont(name: AppFonts.buttonFont, size: 17)
            mutableAttributes.setValue(font, forKey: NSFontAttributeName)
            self.titleLabel?.attributedText = mutableAttributes
        }
    }
}
