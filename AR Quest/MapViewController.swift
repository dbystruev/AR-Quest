//
//  ViewController.swift
//  AR Quest
//
//  Created by Denis Bystruev on 21/12/2018.
//  Copyright © 2018 Denis Bystruev. All rights reserved.
//

import MapKit
import UIKit

class MapViewController: UIViewController {
    var prizes: [PrizeObject]?
    
    let prize = PrizeObject(
        coordinate: CLLocationCoordinate2D(latitude: 55.77, longitude: 37.47),
        title: "Хорошкола",
        subtitle: "Народного ополчения, 9А"
    )
}

