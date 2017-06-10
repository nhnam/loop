//
//  EventViewModelDescriptionItem.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import Foundation

class EventViewModelDescriptionItem: EventViewModelItem {
  var type: EventViewModelItemType {
    return .description
  }

  var rowCount: Int {
    return 2
  }

  var description: String?
  var category: String?

  var attributes: [Attribute]?

  init(attributes: [Attribute]?) {
    self.attributes = attributes
  }
}
