//
//  ViewController.swift
//  google-maps-ios-polyline
//
//  Created by Alexander Graebe on 6/16/19.
//  Copyright © 2019 Alexander Graebe. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 38.89399, longitude: -77.03659, zoom: 16.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        let path = GMSMutablePath()

        path.add(CLLocationCoordinate2D(latitude: 38.893596444352134, longitude: -77.0381498336792))
        path.add(CLLocationCoordinate2D(latitude: 38.89337933372204, longitude: -77.03792452812195))
        path.add(CLLocationCoordinate2D(latitude: 38.89316222242831, longitude: -77.03761339187622))
        path.add(CLLocationCoordinate2D(latitude: 38.893028615148424, longitude: -77.03731298446655))
        path.add(CLLocationCoordinate2D(latitude: 38.892920059048464, longitude: -77.03691601753235))
        path.add(CLLocationCoordinate2D(latitude: 38.892903358095296, longitude: -77.03637957572937))
        path.add(CLLocationCoordinate2D(latitude: 38.89301191422077, longitude: -77.03592896461487))
        path.add(CLLocationCoordinate2D(latitude: 38.89316222242831, longitude: -77.03549981117249))
        path.add(CLLocationCoordinate2D(latitude: 38.89340438498248, longitude: -77.03514575958252))
        path.add(CLLocationCoordinate2D(latitude: 38.893596444352134, longitude: -77.0349633693695))

        let polyline = GMSPolyline(path: path)
        polyline.strokeWidth = 3.0
        polyline.strokeColor = .red
        
        polyline.map = mapView
    }
}

