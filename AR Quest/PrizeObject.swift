//
//  Prize.swift
//  AR Quest
//
//  Created by Denis Bystruev on 21/12/2018.
//  Copyright © 2018 Denis Bystruev. All rights reserved.
//

import MapKit

// Prize as it is stored in the database
struct Prize {
    let id: Int                 // unique identifier of a prize
    
    var color: Int              // prize's color
    var latitude: Double        // latitude of prize's location
    var longitude: Double       // longitude of prize's location
    var name: String            // name of the prize
    var probability: Double     // the probability to find the prize (0.0...1.0)
    var size: Double            // radius of the prize
    
    var categories = 0          // bitmask categories where the prize belong to
    var cost = 0.0              // the cost of the prize
    var description = ""        // the description of the prize
    var image: URL? = nil       // the address of prize's picture
    var link: URL? = nil        // the address of the prize
    var model: URL? = nil       // the address of prize's 3D model
    var price = 0.0             // the value of the prize
    
    // The center point (specified as a map coordinate) of the annotation
    var coordinate: CLLocationCoordinate2D {
        get {
            return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }
        set {
            latitude = coordinate.latitude
            longitude = coordinate.longitude
        }
    }
    
    // The string containing the annotation’s title
    var title: String {
        get {
            return name
        }
        set {
            name = title
        }
    }
    
    // The string containing the annotation’s subtitle
    var subtitle: String {
        get {
            return description
        }
        set {
            description = subtitle
        }
    }
}

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
