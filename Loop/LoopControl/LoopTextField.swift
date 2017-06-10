//
//  LoopTextField.swift
//  Loop
//
//  Created by Tan Vu on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import Foundation
import UIKit

class LoopTextField: UITextField {
  override func awakeFromNib() {
    setBorderTextField()
    setPadingTextField()
    setFont()
  }

  fileprivate func setBorderTextField(){
    layer.borderWidth = 1.0
    layer.borderColor = appConfig.borderTextFieldColor.cgColor
    layer.masksToBounds = true
  }

  fileprivate func setPadingTextField() {
    leftView = UIView(frame: CGRect(x : 0, y: 0, width: 20, height: self.frame.height))
    leftViewMode = UITextFieldViewMode.always
  }

  fileprivate func setFont() {
    self.font = UIFont(name: AppFonts.textFieldFont, size: 14)
  }
}

