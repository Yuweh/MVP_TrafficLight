//
//  TrafficLightService.swift
//  MVP_TrafficLight
//
//  Created by Francis Jemuel Bergonia on 12/15/19.
//  Copyright © 2019 Xi Apps. All rights reserved.
//

import Foundation

class TrafficLightService {
    
    func getTrafficLight(colorName:(String), callBack:(TrafficLight?) -> Void) {
        let trafficLights = [TrafficLight(colorName: "Red", description: "Stop"),
                             TrafficLight(colorName: "Green", description: "Go"),
                             TrafficLight(colorName: "Yellow", description: "About to change to red")
        ]
        
        if let foundTrafficLight = trafficLights.first(where: {$0.colorName == colorName}) {
            callBack(foundTrafficLight)
        } else {
            callBack(nil)
        }
    }
}
