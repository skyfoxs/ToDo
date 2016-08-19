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

    init(title: String, description: String? = nil) {
        self.title = title
    }
}