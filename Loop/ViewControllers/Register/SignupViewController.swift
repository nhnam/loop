//
//  SigUpViewController.swift
//  Loop
//
//  Created by Thanh Nhat on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class SignupViewController: BaseRegisterViewViewController, BaseViewControllerProtocol {

  @IBOutlet weak var nameTextField: LoopTextField!
  @IBOutlet weak var emailTextField: LoopTextField!
  @IBOutlet weak var passwordTextField: LoopTextField!
  @IBOutlet weak var signUpButton: LoopButton!
  @IBOutlet weak var loginFacebookView: FBSDKLoginButton!
  @IBOutlet weak var signMeBackInButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setUpView()
  }

  func setUpView() {
    self.loginFacebookView.delegate = self
    emailTextField?.font = UIFont(name: AppFonts.textFieldFont, size: 14)
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    navigationController?.isNavigationBarHidden = true
  }

  @IBAction func signUpAction(_ sender: UIButton) {
    navigationController?.pushViewController(UIViewController.signupViewController, animated: true)
  }

  @IBAction func signUpBackMeAction(_ sender: UIButton) {
    navigationController?.pushViewController(UIViewController.signinViewController, animated: true)
  }

}
extension SignupViewController: FBSDKLoginButtonDelegate {

  func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
    let loginManager: FBSDKLoginManager = FBSDKLoginManager()
    loginManager.logOut()
  }

  func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
    FBSDKGraphRequest.init(graphPath: "me", parameters: ["fields":"first_name, last_name, picture.type(large)"]).start { (connection, result, error) -> Void in
      if(result != nil) {
        let resultData = result as AnyObject

        let id          = resultData.object(forKey: "id")
        let first_name  = resultData.object(forKey: "first_name")
        let last_name   = resultData.object(forKey: "last_name")
        let picture     = ((resultData.object(forKey: "picture") as AnyObject).object(forKey : "data") as AnyObject).object(forKey: "url")
        print("id : \(id!), \(first_name!), \(last_name!), \(picture!)")
      }
    }
  }
}



