//
//  BaseRegisterViewViewController.swift
//  Loop
//
//  Created by Tan Vu on 6/8/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

class BaseRegisterViewViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    customNavigation()
    addEventTouchInView()
    self.view.backgroundColor = appConfig.mainBackgroundColor
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    configView()
  }

  func configView() {}

  func customNavigation() {
    self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    self.navigationController?.navigationBar.shadowImage = UIImage()
    self.navigationController?.navigationBar.isTranslucent = true
    self.navigationController?.view.backgroundColor = UIColor.clear
    navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
  }

  func addEventTouchInView () -> Void {
    let gesture = UITapGestureRecognizer(target: self, action: #selector(BaseRegisterViewViewController.touchInView(_:)))
    self.view.addGestureRecognizer(gesture)
  }

  func touchInView(_ sender:UITapGestureRecognizer) {
    closeKeyBoard()
  }

  func closeKeyBoard()  {
    self.view.endEditing(true)
  }
}
