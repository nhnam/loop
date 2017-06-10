//
//  TitleAndCameraTableViewCell.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit

protocol PrivateEventTableViewCellProtocol: UITableViewCellProtocol {
  var item: Attribute? { get }
}

class TitleAndCameraTableViewCell: UITableViewCell, PrivateEventTableViewCellProtocol {
  @IBOutlet weak var keyTitle: UILabel!
  @IBOutlet weak var valueTitle: UILabel!
  @IBOutlet weak var buttonCamera: LoopButton!
  @IBOutlet weak var imageSelected: UIImageView!

  var item: Attribute? {
    didSet {
      if let key = item?.key {
        keyTitle.text = key
      }

      if let value = item?.value {
        valueTitle.text = value
      }
    }
  }

  override func awakeFromNib() {
    super.awakeFromNib()
    selectionStyle = .none
  }

  @IBAction func buttonCameraClicked(_ sender: UIButton) {
  }
}
