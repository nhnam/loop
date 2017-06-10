//
//  EventViewModelTitleItem.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import Foundation
import UIKit

class EventViewModelTitleItem: EventViewModelItem {
  var type: EventViewModelItemType {
    return .title
  }

  var title: String?
  var image: UIImage?

  var attributes: [Attribute]?

  init(attributes: [Attribute]?) {
    self.attributes = attributes
  }
}
