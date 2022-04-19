//
//  DeliveryViewController.swift
//  MealPirates
//
//  Created by Mah Tej Rella on 4/19/22.
//

import UIKit
import MapKit
import CoreLocation


class DeliveryViewController: UIViewController, MKMapViewDelegate {
    
    let map = MKMapView()
    
    let coordinate = CLLocationCoordinate2D(
        latitude: 33.76986,
        longitude: -84.39138
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(map)
        map.frame = view.bounds
        // Do any additional setup after loading the view.
        
        map.setRegion(MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007)), animated: false)
        
        map.delegate = self
        
        addCustomPin()
    }
    
    private func addCustomPin() {
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        pin.title = "Your Drop-Off Location"
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

