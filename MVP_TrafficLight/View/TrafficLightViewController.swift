//
//  TrafficLightViewController.swift
//  MVPExample
//
//  Created by Francis Jemuel Bergonia on 12/15/19.
//  Copyright © 2019 Xi Apps. All rights reserved.
//

import UIKit

class TrafficLightViewController: UIViewController, TrafficLightViewDelegate {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLightPresenter.setViewDelegate(trafficLightViewDelegate: self)
    }
    
    @IBAction func redLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Red")
    }
    
    @IBAction func yellowLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Yellow")
    }
    
    @IBAction func greenLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Green")
    }
    
    func displayTrafficLight(description:(String)) {
        descriptionLabel.text = description
    }
}
