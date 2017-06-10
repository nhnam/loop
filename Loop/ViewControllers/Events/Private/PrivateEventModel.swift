//
//  EventModel.swift
//  Loop
//
//  Created by Tan Vu on 6/9/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import Foundation
import UIKit

class PrivateEventModel: NSObject {
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
    let locationItem = Attribute(key: "Location")
    let infoItems = EventViewModelInfoItem(attributes: [dateTimeItem, locationItem])

    let descriptionItem = Attribute(key: "Description")
    let selectCategoryItem = Attribute(key: "Select Category")
    let descriptionItems = EventViewModelDescriptionItem(attributes: [descriptionItem, selectCategoryItem])

    let loopTicketingItem = Attribute(key: "Use LoopTicketing")
    let inviteFriendsITem = Attribute(key: "Guests Can Invite Friends")
    let coHostItem = Attribute(key: "Co-Hosts")
    let settingItems = EventViewModelSettingItem(attributes: [loopTicketingItem, inviteFriendsITem, coHostItem])
    return [titleItems, infoItems, descriptionItems, settingItems]
  }
}

extension PrivateEventModel: UITableViewDataSource {
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
    case .info, .description:
      if let cell = tableView.dequeueReusableCell(withIdentifier: KeyValueTableViewCell.identifier, for: indexPath) as? KeyValueTableViewCell {
        cell.item = item.attributes?[indexPath.row]
        return cell
      }
    case .setting:
      if indexPath.row < (item.attributes?.count ?? 1) - 1 {
        if let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.identifier, for: indexPath) as? SwitchTableViewCell {
          cell.item = item.attributes?[indexPath.row]
          return cell
        }
      } else {
        if let cell = tableView.dequeueReusableCell(withIdentifier: KeyValueTableViewCell.identifier, for: indexPath) as? KeyValueTableViewCell {
          cell.item = item.attributes?[indexPath.row]
          return cell
        }
      }
    }

    return UITableViewCell()
  }
}
