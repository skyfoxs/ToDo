//
//  LocationTests.swift
//  ToDo
//
//  Created by Supakit Thanadittagorn on 8/21/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

import XCTest
import CoreLocation

@testable import ToDo

class LocationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testInit_ShouldSetNameAndCoordinate(){
        let coordinate = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        let location = Location(name: "name", coordinate: coordinate)

        XCTAssertEqual(location.coordinate?.latitude, coordinate.latitude)
        XCTAssertEqual(location.coordinate?.longitude, coordinate.longitude)
    }

    func testEqualLocation_ShouldBeEqual(){
        let first = Location(name: "Test")
        let second = Location(name: "Test")

        XCTAssertEqual(first, second)
    }

    func testEqualLocation_DifferentLatitude_ShouldNotBeEqual(){
        let first = Location(name: "Test", coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0))
        let second = Location(name: "Test", coordinate: CLLocationCoordinate2D(latitude: 1, longitude: 0))
        XCTAssertNotEqual(first, second)
    }

    func testEqualLocation_DifferentLongitude_ShouldNotBeEqual(){
        let first = Location(name: "Test", coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0))
        let second = Location(name: "Test", coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 1))
        XCTAssertNotEqual(first, second)
    }

}
