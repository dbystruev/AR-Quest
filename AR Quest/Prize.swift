//
//  Prize.swift
//  AR Quest
//
//  Created by Denis Bystruev on 21/12/2018.
//  Copyright © 2018 Denis Bystruev. All rights reserved.
//

import MapKit

// Prize object conforming to MKAnnotation protocol
class PrizeObject: NSObject, MKAnnotation {
    // The center point (specified as a map coordinate) of the annotation
    var coordinate: CLLocationCoordinate2D
    
    // The string containing the annotation’s title
    var title: String?
    
    // The string containing the annotation’s subtitle
    var subtitle: String?

    init(coordinate: CLLocationCoordinate2D, title: String? = nil, subtitle: String? = nil) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
    
}
