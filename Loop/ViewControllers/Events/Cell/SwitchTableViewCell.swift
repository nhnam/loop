//
//  SwitchTableViewCell.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

class SwitchTableViewCell: UITableViewCell, PrivateEventTableViewCellProtocol {
  @IBOutlet weak var valueSwitch: UISwitch!
  @IBOutlet weak var keyLabel: UILabel!

  var item: Attribute? {
    didSet {
      if let key = item?.key {
        keyLabel.text = key
      }
    }
  }

  override func awakeFromNib() {
    super.awakeFromNib()
    selectionStyle = .none
  }
}
