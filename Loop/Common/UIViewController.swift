//
//  UIViewController.swift
//  Loop
//
//  Created by Tan Vu on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

// MARK: Signup session
extension UIViewController {
  class var signinViewController: UIViewController {
    return UIStoryboard.signin.instantiateViewController(withIdentifier: SiginViewController.identifier)
  }

  class var signupViewController: UIViewController {
    return UIStoryboard.signin.instantiateViewController(withIdentifier: SignupViewController.identifier)
  }

  class var forgotPasswordViewController: UIViewController {
    return UIStoryboard.signin.instantiateViewController(withIdentifier: ForgotPasswordViewController.identifier)
  }

  class var signupRootNavigationController: UIViewController {
    return UIStoryboard.signin.instantiateViewController(withIdentifier: SignupRootNavigationController.identifier)
  }
}

// MARK: Home
extension UIViewController {
  class var mainTabsViewController: UIViewController {
    return UIStoryboard.main.instantiateViewController(withIdentifier: MainTabsViewController.identifier)
  }
}
