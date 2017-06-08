//
//  UIViewController.swift
//  Loop
//
//  Created by Tan Vu on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

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
}
