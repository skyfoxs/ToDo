//
//  Location.swift
//  ToDo
//
//  Created by Supakit Thanadittagorn on 8/20/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

import Foundation
import CoreLocation

struct Location:Equatable {
    let name: String
    let coordinate: CLLocationCoordinate2D?

    init(name: String, coordinate: CLLocationCoordinate2D? = nil){
        self.name = name
        self.coordinate = coordinate
    }
}

func ==(lhs:Location, rhs:Location) -> Bool {
    if lhs.coordinate?.latitude != rhs.coordinate?.latitude {
        return false
    }
    if lhs.coordinate?.longitude != rhs.coordinate?.longitude {
        return false
    }
    return true
}