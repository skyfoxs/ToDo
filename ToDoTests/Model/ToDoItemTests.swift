//
//  ToDoItemTests.swift
//  ToDo
//
//  Created by Supakit Thanadittagorn on 8/19/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

import XCTest

@testable import ToDo

class ToDoItemTests: XCTestCase {

    var title: String!
    var itemDescription: String!

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        title = "Title"
        itemDescription = "Description"
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testInit_ShouldTakeTitle(){
        _ = ToDoItem(title : title)
    }

    func testInit_ShouldTakeDescription(){
        _ = ToDoItem(title: title, description: "description")
    }

    func testInit_ShouldSetTitle(){
        title = "Another Title"
        let todoItem = ToDoItem(title: title)
        XCTAssertEqual(todoItem.title, title)
    }

    func testInit_ShouldSetDescription(){
        let todoItem = ToDoItem(title: title, description: itemDescription)
        XCTAssertEqual(todoItem.itemDescription, itemDescription)
    }

    func testInit_ShouldSetAnotherDescription(){
        itemDescription = "Another Description"
        let todoItem = ToDoItem(title: title, description: itemDescription)
        XCTAssertEqual(todoItem.itemDescription, itemDescription)
    }

    func testInit_ShouldSetTimeStamp(){
        let todoItem = ToDoItem(title: title, description: itemDescription, timestamp: 0.0)
        XCTAssertEqual(todoItem.timestamp, 0.0)
    }

    func testInit_ShouldSetLocation(){
        let location = Location(name: "Location")
        let todoItem = ToDoItem(title: title, description: itemDescription, timestamp: 0.0, location: location)
        XCTAssertEqual(todoItem.location?.name, "Location")
    }

    func testEqualItem_ShouldBeEqual(){
        let first = ToDoItem(title: "Title")
        let second = ToDoItem(title: "Title")

        XCTAssertEqual(first, second)
    }
}
