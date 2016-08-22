//
//  ToDoItem.swift
//  ToDo
//
//  Created by Supakit Thanadittagorn on 8/19/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

import Foundation

struct ToDoItem: Equatable {
    let title: String
    let itemDescription: String?
    let timestamp: Double?
    let location: Location?

    init(title: String, description: String? = nil, timestamp: Double? = nil, location: Location? = nil) {
        self.title = title
        self.itemDescription = description
        self.timestamp = timestamp
        self.location = location
    }
}

func ==(lhs: ToDoItem, rhs: ToDoItem) -> Bool {
    let notEqual = [
        lhs.itemDescription != rhs.itemDescription,
        lhs.timestamp != rhs.timestamp,
        lhs.location != rhs.location,
        lhs.title != rhs.title
    ]
    for match in notEqual where match {
        return false
    }
    return true
}