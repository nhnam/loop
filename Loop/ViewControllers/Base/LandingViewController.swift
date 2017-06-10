//
//  LandingViewController.swift
//  Loop
//
//  Created by Tan Vu on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController, BaseViewControllerProtocol {
  fileprivate var signupRootNavigationController: SignupRootNavigationController? = UIViewController.signupRootNavigationController as? SignupRootNavigationController

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    signupRootNavigationController?.signupdelegate = self
    self.present(signupRootNavigationController!, animated: false, completion: nil)
  }
}

extension LandingViewController: RegisterViewViewControllerDelegate {
  func didFinishSignup(signupRootNavigationController: SignupRootNavigationController) {
    signupRootNavigationController.present(UIViewController.mainTabsViewController, animated: false, completion: nil)
  }
}
