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
    var firstItem: ToDoItem!
    var secondItem: ToDoItem!

    override func setUp() {
        super.setUp()
        itemManager = ItemManager()
        firstItem = ToDoItem(title: "Item Name")
        secondItem = ToDoItem(title: "Item Name 2")
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
        itemManager.addItem(firstItem)
        XCTAssertEqual(itemManager.toDoCount, 1)
    }

    func testToDoCount_AfterAddTwoItem_ShouldBeTwo(){
        itemManager.addItem(firstItem)
        itemManager.addItem(secondItem)
        XCTAssertEqual(itemManager.toDoCount, 2)
    }

    func testItemAtIndex_ShouldReturnToDoItem(){
        itemManager.addItem(firstItem)
        let item = itemManager.itemAtIndex(0)
        XCTAssertEqual(item.title, firstItem.title)
    }

    func testItemAtIndex_ShouldReturnSecondToDoItem(){
        itemManager.addItem(firstItem)
        itemManager.addItem(secondItem)
        let item = itemManager.itemAtIndex(1)
        XCTAssertEqual(item.title, secondItem.title)
    }

    func testDoneCount_AfterCheckItem_ShouldBeOne(){
        itemManager.addItem(firstItem)
        itemManager.checkItemAtIndex(0)
        XCTAssertEqual(itemManager.doneCount, 1)
    }

    func testDoneCount_AfterCheckTwoItem_ShouldBeTwo(){
        itemManager.addItem(firstItem)
        itemManager.addItem(secondItem)
        itemManager.checkItemAtIndex(1)
        itemManager.checkItemAtIndex(0)
        XCTAssertEqual(itemManager.doneCount, 2)
    }
}
