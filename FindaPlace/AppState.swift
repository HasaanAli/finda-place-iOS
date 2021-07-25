//
//  AppState.swift
//  FindaPlace
//
//  Created by Hasaan Ali on 25/07/2021.
//

import Foundation
import CoreLocation

class AppState: ObservableObject {
    @Published var currentLocation: Location?
}

/// Singleton
class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {

    @Published var currentLocation: Location?
    private let cllm = CLLocationManager()

    override init() {
        super.init()
        cllm.delegate = self
    }

    func requestUserPermission() {
        cllm.requestWhenInUseAuthorization()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {

    }

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            if CLLocationManager.isMonitoringAvailable(for: CLBeaconRegion.self) {
                if CLLocationManager.isRangingAvailable() {
                    // do stuff
                }
            }
        }
    }
}
