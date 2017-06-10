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
  }

  func setBorderButton() {
    layer.borderWidth = 1.0
    layer.borderColor = appConfig.appColor.cgColor
    layer.masksToBounds = true
  }
}
