//
//  ViewController.swift
//  Guiamigo
//
//  Created by Student on 3/22/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import UIKit
import MapKit

class MainViewController: UIViewController, CLLocationManagerDelegate  {

    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func addEventButton(_ sender: UIBarButtonItem) {
        if UserDAO.userLogged != nil {
            self.performSegue(withIdentifier: "chooseLocationSegue", sender: self)
        } else {
            self.performSegue(withIdentifier: "signInSegue", sender: self)
        }
    }
    
    var locationManager = CLLocationManager()
    var userLocation = CLLocation()
    var events: [Event] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        events = EventDAO.getEvents()
        self.setupLocationManager()
        self.addAnnotationToMap()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }

    func setupLocationManager() {
        
        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.startUpdatingLocation()
        
        mapView.setUserTrackingMode(MKUserTrackingMode.follow, animated: true)
        
    }

    func addAnnotationToMap() {
        
        var eventPoints = [MKPointAnnotation]()
        
        for event in events {
            let newAnnotation = MKPointAnnotation()
            
            newAnnotation.coordinate.latitude = event.latitude
            newAnnotation.coordinate.longitude = event.longitude
            newAnnotation.title = "\(event.host.firstName) \(event.host.lastName)"
            newAnnotation.subtitle = String(describing: "\(event.name)")
            
            eventPoints.append(newAnnotation)
            
        }

        mapView.addAnnotations(eventPoints)

    }


}

