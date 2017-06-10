//
//  KeyValueTableViewCell.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

class KeyValueTableViewCell: UITableViewCell, PrivateEventTableViewCellProtocol {
  @IBOutlet weak var keyLabel: UILabel!
  @IBOutlet weak var valueLabel: UILabel!

  var item: Attribute? {
    didSet {
      if let key = item?.key {
        keyLabel.text = key
      }

      if let value = item?.value {
        valueLabel.text = value
      }
    }
  }

  override func awakeFromNib() {
    super.awakeFromNib()
    selectionStyle = .none
  }
}
