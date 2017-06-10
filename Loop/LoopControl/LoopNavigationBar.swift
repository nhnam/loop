//
//  LoopNavigationBar.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

extension UINavigationBar {
  func setBottomBorderColor(color: UIColor, height: CGFloat) {
    let bottomBorderRect = CGRect(x: 0, y: frame.height, width: frame.width, height: height)
    let bottomBorderView = UIView(frame: bottomBorderRect)
    bottomBorderView.backgroundColor = color
    addSubview(bottomBorderView)
  }
}
