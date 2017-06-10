//
//  EventViewModelSettingItem.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import Foundation

class EventViewModelSettingItem: EventViewModelItem {
  var type: EventViewModelItemType {
    return .setting
  }

  var rowCount: Int {
    return 3
  }

  var loopTicketing: Bool = true
  var canInviteFriend: Bool = true
  var coHosts: [String]?

  var attributes: [Attribute]?

  init(attributes: [Attribute]?) {
    self.attributes = attributes
  }
}
