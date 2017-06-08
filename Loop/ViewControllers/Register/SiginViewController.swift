//
//  SigInViewController.swift
//  Loop
//
//  Created by Thanh Nhat on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class SiginViewController: BaseRegisterViewViewController, BaseViewControllerProtocol {

  @IBOutlet weak var emailTextField: LoopTextField!
  @IBOutlet weak var passwordTextField: LoopTextField!
  @IBOutlet weak var signInButton: LoopButton!
  @IBOutlet weak var facebookView: FBSDKLoginButton!
  @IBOutlet weak var forgotPasswordButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    setUpView()
  }

  func setUpView() {
    navigationController?.isNavigationBarHidden = false
    self.facebookView.delegate = self
    self.navigationController?.navigationBar.tintColor = UIColor.red
    self.navigationItem.title = "Log In"
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  @IBAction func sigInAction(_ sender: UIButton) {
//    GET_APP_DELEGATE.setMainTabViewController()
  }

  @IBAction func forgotPasswordAction(_ sender: UIButton) {
    navigationController?.pushViewController(UIViewController.forgotPasswordViewController, animated: true)
  }

}

extension SiginViewController : FBSDKLoginButtonDelegate {
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
