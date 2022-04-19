//
//  MapViewController.swift
//  MealPirates
//
//  Created by Mah Tej Rella on 4/19/22.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate {
    
    let map = MKMapView()
    
    let coordinate = CLLocationCoordinate2D(latitude: 33.77007, longitude: -84.39165)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(map)
        map.frame = view.bounds
        map.frame.size.height = 374.0
        map.frame.size.width = 358.0
        map.frame.origin.x = 16
        map.frame.origin.y = 110
        
        map.setRegion(MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)), animated: false)

        map.delegate = self
        addCustomPin()
    }
    
    private func addCustomPin() {
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        pin.title = "Your Drop-Off Location"
        pin.subtitle = "North Avenue Apartments"
        map.addAnnotation(pin)
    }
    
    // Map
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard !(annotation is MKUserLocation) else {
            return nil
        }
        
        var annotationView = map.dequeueReusableAnnotationView(withIdentifier: "custom")
        
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "custom")
            
            annotationView?.canShowCallout = true
        } else {
            annotationView?.annotation = annotation
        }
        
        annotationView?.image = UIImage(named: "pinpoint")
        
        return annotationView
    }
}
