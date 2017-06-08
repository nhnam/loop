//
//  ForgotPasswordViewController.swift
//  Loop
//
//  Created by Thanh Nhat on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: BaseRegisterViewViewController, BaseViewControllerProtocol {

  @IBOutlet weak var textHeaderLabel: UILabel!
  @IBOutlet weak var emailTextField: LoopTextField!

  override func viewDidLoad() {
    super.viewDidLoad()
    setUpView()
  }

  func setUpView() {
    self.navigationItem.title = "Fogot Password"
  }
}
