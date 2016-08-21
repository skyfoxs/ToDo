//
//  ItemManager.swift
//  ToDo
//
//  Created by Supakit Thanadittagorn on 8/21/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

import Foundation

class ItemManager {
    var toDoItem = [ToDoItem]()
    var toDoCount: Int {
        return toDoItem.count
    }

    let doneCount = 0
    
    func addItem(item: ToDoItem) {
        toDoItem.append(item)
    }

    func itemAtIndex(index: Int) -> ToDoItem {
        return toDoItem[index]
    }
}