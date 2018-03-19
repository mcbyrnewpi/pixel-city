//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Matthew Byrne on 3/19/18.
//  Copyright © 2018 Matthew Byrne. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
