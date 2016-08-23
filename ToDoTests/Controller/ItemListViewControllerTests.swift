//
//  ItemListViewControllerTests.swift
//  ToDo
//
//  Created by Supakit Thanadittagorn on 8/23/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

import XCTest

@testable import ToDo

class ItemListViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_TableViewShoudNotNil() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewControllerWithIdentifier("ItemListViewController") as! ItemListViewController

        _ = controller.view // This load view so IBOutlet is connected

        XCTAssertNotNil(controller.tableView)
    }

    func testViewDidLoad_ShouldSetTableViewDataSource(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewControllerWithIdentifier("ItemListViewController") as! ItemListViewController

        _ = controller.view

        XCTAssertNotNil(controller.tableView.dataSource)
        XCTAssertTrue(controller.tableView.dataSource is ItemListDataProvider)
    }
}
