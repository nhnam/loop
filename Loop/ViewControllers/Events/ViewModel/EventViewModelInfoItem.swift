//
//  EventViewModelInfoItem.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import Foundation

class EventViewModelInfoItem: EventViewModelItem {
  var type: EventViewModelItemType {
    return .info
  }

  var rowCount: Int {
    return 2
  }

  var dateTime: Date?
  var location: String?

  var attributes: [Attribute]?

  init(attributes: [Attribute]?) {
    self.attributes = attributes
  }
}
