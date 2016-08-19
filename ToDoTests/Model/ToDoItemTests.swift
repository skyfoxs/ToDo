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
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testInit_ShouldTakeTitle(){
        _ = ToDoItem(title : "Title")
    }

    func testInit_ShouldTakeDescription(){
        _ = ToDoItem(title: "Title", description: "descripiton")
    }

    func testInit_ShouldSetTitle(){
        let todoItem = ToDoItem(title: "Another Title")
        XCTAssertEqual(todoItem.title, "Another Title")
    }
    
}
