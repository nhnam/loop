//
//  LandingViewController.swift
//  Loop
//
//  Created by Tan Vu on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController, BaseViewControllerProtocol {
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    self.present(UIViewController.signupViewController, animated: false, completion: nil)
  }
}

