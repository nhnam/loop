//
//  MainTabsViewController.swift
//  Loop
//
//  Created by Tan Vu on 6/7/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

class MainTabsViewController: UITabBarController, BaseViewControllerProtocol {
  override func viewDidLoad() {
    super.viewDidLoad()
    self.tabBar.tintColor = appConfig.appColor
  }
}
