//
//  AppConfigure.swift
//  Loop
//
//  Created by Tan Vu on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

protocol AppConfigProtocol {
  var textFieldColor: UIColor { get }
  var borderButtonColor : UIColor { get }
  var borderTextFieldColor: UIColor { get }
  var splashBackgroundColor: UIColor { get }
  var mainBackgroundColor: UIColor { get }
  var navigationBarBottomColor: UIColor { get }
  var appColor: UIColor { get }
}

class AppConfigure : AppConfigProtocol {
  var textFieldColor: UIColor {
    return UIColor(red: 145/255, green:146/255, blue: 146/255, alpha: 1.0)
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
  var navigationBarBottomColor: UIColor {
    return UIColor(red: 151/255, green:151/255, blue: 151/255, alpha: 1.0)
  }
  var appColor: UIColor {
    return UIColor(red: 229/255, green:0/255, blue: 21/255, alpha: 1.0)
  }
}
