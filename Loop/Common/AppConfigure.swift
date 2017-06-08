//
//  AppConfigure.swift
//  Loop
//
//  Created by Thanh Nhat on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

protocol AppConfigProtocol {
  var textFieldColor: UIColor { get }
  var borderButtonColor : UIColor { get }
  var borderTextFieldColor: UIColor { get }
  var splashBackgroundColor: UIColor { get }
  var mainBackgroundColor: UIColor { get }
}

class AppConfigure : AppConfigProtocol {
  var textFieldColor: UIColor {
    return UIColor.gray
  }

  var backgroundColorApp: UIColor {
    return UIColor(red: 247/255, green:247/255, blue: 247/255, alpha: 1.0)
  }

  var borderButtonColor: UIColor {
    return UIColor.red
  }

  var borderTextFieldColor: UIColor {
    return UIColor.lightGray
  }

  var splashBackgroundColor: UIColor {
    return UIColor(red: 179/255, green:49/255, blue: 45/255, alpha: 1.0)
  }
  var mainBackgroundColor: UIColor {
    return UIColor(red: 247/255, green:247/255, blue: 247/255, alpha: 1.0)
  }
}
