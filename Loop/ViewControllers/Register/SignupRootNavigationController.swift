//
//  SignupRootNavigationController.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

protocol RegisterViewViewControllerDelegate: class {
  func didFinishSignup(signupRootNavigationController: SignupRootNavigationController)
}

class SignupRootNavigationController: UINavigationController, BaseViewControllerProtocol {
  weak var signupdelegate: RegisterViewViewControllerDelegate?

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    self.navigationBar.setBottomBorderColor(color: appConfig.navigationBarBottomColor, height: 1)
  }
}

extension SignupRootNavigationController {
  func signupSuccess() {
    self.signupdelegate?.didFinishSignup(signupRootNavigationController: self)
  }
}
