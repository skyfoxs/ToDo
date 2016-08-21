//
//  ItemManagerTests.swift
//  ToDo
//
//  Created by Supakit Thanadittagorn on 8/21/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

import XCTest

@testable import ToDo

class ItemManagerTests: XCTestCase {

    var itemManager: ItemManager!

    override func setUp() {
        super.setUp()
        itemManager = ItemManager()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testToDoCount_Initially_ShouldBeZero() {
        XCTAssertEqual(itemManager.toDoCount, 0)
    }

    func testDoneCount_Initially_ShouldBeZero() {
        XCTAssertEqual(itemManager.doneCount, 0)
    }

    func testToDoCount_AfterAddingOneItem_ShouldBeOne(){
        itemManager.addItem(ToDoItem(title: "Item Name"))
        XCTAssertEqual(itemManager.toDoCount, 1)
    }
}
