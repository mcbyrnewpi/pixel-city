//
//  ViewController.swift
//  pixel-city
//
//  Created by Matthew Byrne on 3/15/18.
//  Copyright © 2018 Matthew Byrne. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    // Outlets
    
    @IBOutlet weak var mapView: MKMapView!
    
    // Variables
    
    var locationManager = CLLocationManager()
    let authorizationStatus = CLLocationManager.authorizationStatus()
    let regionRadius: Double = 1000
    
    
    // Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        locationManager.delegate = self
        configureLocationServices()
    }
    
    
    // Actions
    
    @IBAction func centerMapBtnPressed(_ sender: Any) {
        if authorizationStatus == .authorizedAlways || authorizationStatus == .authorizedWhenInUse {
            centerMapOnUserLocation()   
        }
    }
    
    
}

extension MapVC: MKMapViewDelegate {
    
    func centerMapOnUserLocation() {
        guard let coordinate = locationManager.location?.coordinate else { return }
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(coordinate, regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
}

extension MapVC: CLLocationManagerDelegate {
    
    func configureLocationServices() {
        if authorizationStatus == .notDetermined {
            locationManager.requestAlwaysAuthorization()
        } else {
            return
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        centerMapOnUserLocation()
    }
    
}

