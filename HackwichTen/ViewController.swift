//
//  ViewController.swift
//  HackwichTen
//
//  Created by Lorisa Bulosan on 11/9/23.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    //Part 3
    let initialLocation = CLLocation(latitude: 21.36188, longitude: -158.055725)
    
    let regionRadius: CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Part 3
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
    }

    //Part 3
    func centerMapOnLocation(location: CLLocation)
    {
        let coordinateRegion = MKCoordinateRegion(center:location.coordinate,latitudinalMeters: regionRadius,longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
        
    }
    
    
    
}

