//
//  BaseViewControllerProtocol.swift
//  Loop
//
//  Created by Tan Vu on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import Foundation

protocol BaseViewControllerProtocol {
  static var identifier: String { get }
}

extension BaseViewControllerProtocol {
  static var identifier: String {
    return String(describing: self)
  }
}
