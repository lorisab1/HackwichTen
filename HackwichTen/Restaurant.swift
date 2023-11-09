//
//  Restaurant.swift
//  HackwichTen
//
//  Created by Lorisa Bulosan on 11/9/23.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation {
    
    //Part 4 #5
    let restaurantTitle: String?
    let restaurantType: String
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D)
    {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
        
    }
    
    //Part 5
    
    var subtitle: String?
    {
        //return restaurantTitle
        
        //Problem Set #1 Pt 3
        return restaurantType
    }
  
    
    
}
