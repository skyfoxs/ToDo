//
//  ItemManager.swift
//  ToDo
//
//  Created by Supakit Thanadittagorn on 8/21/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

import Foundation

class ItemManager {
    var toDoCount = 0
    let doneCount = 0

    var toDoItem = [ToDoItem]()

    func addItem(item: ToDoItem) {
        toDoCount += 1
        toDoItem.append(item)
    }

    func itemAtIndex(index: Int) -> ToDoItem {
        return toDoItem[index]
    }
}