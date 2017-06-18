//
//  EventsViewController.swift
//  Loop
//
//  Created by Tan Vu on 6/7/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController {
  @IBOutlet weak var publicButton: LoopButton!
  @IBOutlet weak var privateButton: LoopButton!

  @IBOutlet weak var tableView: UITableView!

  var privateEventViewModel = PrivateEventModel()
  var publicEventViewModel = PublicEventModel()

  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "New Event"

    self.tableView.dataSource = privateEventViewModel
    self.tableView.register(TitleAndCameraTableViewCell.nib, forCellReuseIdentifier: TitleAndCameraTableViewCell.identifier)
    self.tableView.register(KeyValueTableViewCell.nib, forCellReuseIdentifier: KeyValueTableViewCell.identifier)
    self.tableView.register(SwitchTableViewCell.nib, forCellReuseIdentifier: SwitchTableViewCell.identifier)
    self.tableView.delegate = self
    self.tableView.sectionFooterHeight = 20.0
    self.tableView.contentInset = UIEdgeInsets(top: -35, left: 0, bottom: 0, right: 0)
  }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AppController.topViewController = self
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if AppController.topViewController is EventsViewController {
            AppController.topViewController = nil
        }
        super.viewWillDisappear(animated)
    }

  @IBAction func privateButtonClicked(_ sender: UIButton) {
    if sender == privateButton && privateButton.isSelected { return }

    privateButton.isHighlighted = true
    privateButton.isSelected = true

    publicButton.isHighlighted = !privateButton.isHighlighted
    publicButton.isSelected = !privateButton.isHighlighted
    
    tableView.dataSource = privateEventViewModel
    tableView.reloadData()
  }

  @IBAction func publicButtonClicked(_ sender: UIButton) {
    if sender == publicButton && publicButton.isSelected { return }

    publicButton.isHighlighted = true
    publicButton.isSelected = true

    privateButton.isHighlighted = !publicButton.isHighlighted
    privateButton.isSelected = !publicButton.isHighlighted
    
    tableView.dataSource = publicEventViewModel
    tableView.reloadData()
  }
}

extension EventsViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    if indexPath.section == 0 {
      return 117
    }
    return UITableViewAutomaticDimension
  }

  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    if indexPath.section == 0 {
      return 117
    }
    return 44
  }
}
