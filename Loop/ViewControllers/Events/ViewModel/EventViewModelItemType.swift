//
//  EventViewModelItem.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import Foundation

enum EventViewModelItemType {
  case title
  case info
  case description
  case setting
}

class Attribute {
  var key: String?
  var value: String?

  init(key: String, value: String = "") {
    self.key = key
    self.value = value
  }
}

protocol EventViewModelItem {
  var type: EventViewModelItemType { get }
  var rowCount: Int { get }
  var sectionTitle: String  { get }
  var attributes: [Attribute]? { get }
}


extension EventViewModelItem {
  var rowCount: Int { return 1 }
  var sectionTitle: String { return "" }
}
