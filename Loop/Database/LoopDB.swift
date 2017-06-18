//
//  LoopDB.swift
//  Loop
//
//  Created by ナム Nam Nguyen on 6/11/17.
//  Copyright © 2017 Tan Vu. All rights reserved.
//

import UIKit
import CoreData
import CoreStore

class LoopDB: Any {
    
    static let shared = LoopDB()
    let dataStack = DataStack()
    
    private init() {
        
        try! dataStack.addStorageAndWait(
            SQLiteStore(
                fileName: "LoopDB.sqlite",
                configuration: "LoopDB",
                localStorageOptions: .recreateStoreOnModelMismatch
            )
        )
    }
}
