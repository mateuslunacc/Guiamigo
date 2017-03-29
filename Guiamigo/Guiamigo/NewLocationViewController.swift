//
//  newLocationViewController.swift
//  Guiamigo
//
//  Created by Student on 3/28/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import UIKit
import MapKit

class NewLocationViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    
    var userLocation = CLLocation()
    
    var newAnnotation = MKPointAnnotation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tabBarController?.tabBar.isHidden = true
        mapView.showsUserLocation = true
        self.setupLocationManager()
        self.addGesture()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupLocationManager() {
        
        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.startUpdatingLocation()
        
        mapView.setUserTrackingMode(MKUserTrackingMode.follow, animated: true)
        
    }
    
    func addGesture() {
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(addAnnotationToMap(gesturedRecognizer:)))
        
        longPress.minimumPressDuration = 1.0
        
        mapView.addGestureRecognizer(longPress)
        
    }
    
    func addAnnotationToMap(gesturedRecognizer: UIGestureRecognizer) {
        
        let touchPoint = gesturedRecognizer.location(in: mapView)
        
        let newCoordinate: CLLocationCoordinate2D = mapView.convert(touchPoint, toCoordinateFrom: mapView)
        
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "Chosen Location"
        newAnnotation.subtitle = String(describing: "Latitude: \(newCoordinate.latitude) Longitude: \(newCoordinate.longitude)")
        
        mapView.addAnnotation(newAnnotation)
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if locations.count > 0 {
            
            if let location = locations.last {
                userLocation = location
                
                //print("Localizacao atual do usuario = ", userLocation.speed)
                
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let validPoint = self.newAnnotation.coordinate.latitude != 0.0 && self.newAnnotation.coordinate.longitude != 0.0
        
        if (!validPoint) {
            // 1. Crie o AlertController
            let alert: UIAlertController = UIAlertController(title: "Missing coordinate",
                                                             message: "Please, add a location.",
                                                             preferredStyle: .alert)
            
            // 1.1. Caso queira adicionar funções
            let action: UIAlertAction = UIAlertAction(title: "OK", style: .default) { (action) in
                // Aqui insira o código a ser executado caso o usuário execute a ação
                //print("O usuário escolheu: \(action.title)")
            }
            
            // 1.2. Adicione a ação na sua AlertController
            alert.addAction(action)
            
            // 2. Mostrando o alerta para o usuário
            self.present(alert, animated: true, completion: {
                //print("Alerta completo!")
            })
        } else {
            if segue.identifier == "setEventSegue" && self.newAnnotation.coordinate.latitude != 0.0 && self.newAnnotation.coordinate.longitude != 0.0 {
                if let novaView = segue.destination as? CreateNewEventViewController {
                    novaView.latitude = newAnnotation.coordinate.latitude
                    novaView.longitude = newAnnotation.coordinate.longitude
                }
            }
        }
        


    }

}
