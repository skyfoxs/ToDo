//
//  ToDoItem.swift
//  ToDo
//
//  Created by Supakit Thanadittagorn on 8/19/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

import Foundation

struct ToDoItem {
    let title: String
    let itemDescription: String?
    let timestamp: Double?

    init(title: String, description: String? = nil, timestamp: Double? = nil) {
        self.title = title
        self.itemDescription = description
        self.timestamp = timestamp
    }
}