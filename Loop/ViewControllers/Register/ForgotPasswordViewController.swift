//
//  ForgotPasswordViewController.swift
//  Loop
//
//  Created by Tan Vu on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: BaseRegisterViewViewController, BaseViewControllerProtocol {

  @IBOutlet weak var textHeaderLabel: UILabel!
  @IBOutlet weak var emailTextField: LoopTextField!

  override func configView() {
    self.navigationItem.title = "Fogot Password"
  }
}
