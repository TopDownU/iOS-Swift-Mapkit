//
//  ViewController.swift
//  MapkitTutorial
//
//  Created by Vidyadhar V. Thatte on 11/25/17.
//  Copyright © 2017 VdThatte. All rights reserved.
//

import UIKit
import MapKit

class MapPin : NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String, subtitle: String) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
    let regionRadius: CLLocationDistance = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(initialLocation.coordinate, regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
        
        let pin = MapPin(coordinate: CLLocationCoordinate2D(latitude: 21.282778, longitude: -157.829444), title: "Map Pin",
                         subtitle: "This is the map pin I wanted to pin")
        mapView.addAnnotation(pin)
        
        
    }
    
}

