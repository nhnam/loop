//
//  UITableViewCellProtocol.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import Foundation
import UIKit

protocol UITableViewCellProtocol {
  static var identifier: String { get }
  static var nib: UINib { get }
}

extension UITableViewCellProtocol {
  static var identifier: String {
    return String(describing: self)
  }

  static var nib: UINib {
    return UINib(nibName: self.identifier, bundle: nil)
  }
}
