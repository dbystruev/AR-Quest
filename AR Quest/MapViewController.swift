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
    
    @IBOutlet weak var mapView: MKMapView!
    
    var prizes: [PrizeObject]?
    
    let prize = PrizeObject(
        coordinate: CLLocationCoordinate2D(latitude: 55.771638581531505, longitude: 37.47105483322452),
        title: "Хорошкола",
        subtitle: "Народного ополчения, 9А"
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showPins()
    }
    
    func showPins() {
//        let pin = MKPinAnnotationView(annotation: prize, reuseIdentifier: "pin")
        
        let region = MKCoordinateRegion(center: prize.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        
        mapView.setRegion(region, animated: true)
        
        mapView.addAnnotation(prize)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        guard let touch = touches.first else { return }
        
        let location = touch.location(in: mapView)
        
        let coordinate = mapView.convert(location, toCoordinateFrom: mapView)
        
        let region = mapView.region
        
        print(#function, coordinate, region)
    }
}

