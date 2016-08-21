//
//  ItemManager.swift
//  ToDo
//
//  Created by Supakit Thanadittagorn on 8/21/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

import Foundation

class ItemManager {
    private var toDoItems = [ToDoItem]()
    var toDoCount: Int {
        return toDoItems.count
    }
    private var doneItems = [ToDoItem]()
    var doneCount: Int {
        return doneItems.count
    }

    func addItem(item: ToDoItem) {
        toDoItems.append(item)
    }

    func itemAtIndex(index: Int) -> ToDoItem {
        return toDoItems[index]
    }

    func checkItemAtIndex(index: Int) {
        let item = toDoItems.removeAtIndex(index)
        doneItems.append(item)
    }

    func doneItemAtIndex(index: Int) -> ToDoItem {
        return doneItems[index]
    }
}