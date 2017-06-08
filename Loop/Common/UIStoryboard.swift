//
//  UIStoryboard.swift
//  Loop
//
//  Created by Tan Vu on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
  class var main: UIStoryboard {
    return UIStoryboard(name: "Main", bundle: nil)
  }

  class var signin: UIStoryboard {
    return UIStoryboard(name: "Signin", bundle: nil);
  }
}
