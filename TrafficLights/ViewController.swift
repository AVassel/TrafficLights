//
//  ViewController.swift
//  TrafficLights
//
//  Created by Anton Vassel on 30.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet var lights: [UIView]!
    
    var lightIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 15
        startButton.setTitle("START", for: .normal)

        for light in lights {
            light.layer.cornerRadius = 35
            light.alpha = 0.3
        }
    }

    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        if lights[lightIndex].alpha == 1 {
            lights[lightIndex].alpha = 0.3
            lightIndex += 1
        }
        
        if lightIndex > 2 {
            lightIndex = 0
        }
        lights[lightIndex].alpha = 1
    }
    
}

    
