//
//  AppController.swift
//  Loop
//
//  Created by ナム Nam Nguyen on 6/12/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

final class AppController: Any {
    private init() { }
    
    // MARK: Shared Instance
    static let shared = AppController()
    
    open static var topViewController: UIViewController?
}
