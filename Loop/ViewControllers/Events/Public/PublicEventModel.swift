//
//  PublicEventModel.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import Foundation
import UIKit

class PublicEventModel: NSObject {
  var items = [EventViewModelItem]()

  override init() {
    super.init()
    items.append(contentsOf: loadDefaultValue())
  }

  func loadDefaultValue() -> [EventViewModelItem] {
    let eventTitle = Attribute(key: "Event Title")
    let eventCamera = Attribute(key: "Event Camera")
    let titleItems = EventViewModelTitleItem(attributes: [eventTitle, eventCamera])

    let dateTimeItem = Attribute(key: "Date & Time")
    let locationItem = Attribute(key: "Locations")
    let moreInfoItem = Attribute(key: "More info")
    let infoItems = EventViewModelInfoItem(attributes: [dateTimeItem, locationItem, moreInfoItem])

    let selectCategoryItem = Attribute(key: "Select Category")
    let tagItem = Attribute(key: "Tags")
    let descriptionItems = EventViewModelDescriptionItem(attributes: [selectCategoryItem, tagItem])

    let pricePerEntryItem = Attribute(key: "Price Per Entry")
    let numberOfTicket = Attribute(key: "# of Tickets Available")
    let coHostItem = Attribute(key: "Co-Hosts")
    let settingItems = EventViewModelSettingItem(attributes: [pricePerEntryItem, numberOfTicket, coHostItem])
    return [titleItems, infoItems, descriptionItems, settingItems]
  }
}

extension PublicEventModel: UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int {
    return items.count
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items[section].rowCount
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let item = items[indexPath.section]
    switch item.type {
    case .title:
      if let cell = tableView.dequeueReusableCell(withIdentifier: TitleAndCameraTableViewCell.identifier, for: indexPath) as? TitleAndCameraTableViewCell {
        cell.item = item.attributes?[indexPath.row]
        return cell
      }
    case .info, .description, .setting:
      if let cell = tableView.dequeueReusableCell(withIdentifier: KeyValueTableViewCell.identifier, for: indexPath) as? KeyValueTableViewCell {
        cell.item = item.attributes?[indexPath.row]
        return cell
      }
    }

    return UITableViewCell()
  }
}

