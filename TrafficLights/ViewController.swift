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
    
    private var lightIndex = 0
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 15
        startButton.setTitle("START", for: .normal)

        for light in lights {
            light.layer.cornerRadius = light.frame.width / 2
            light.alpha = lightIsOff
        }
    }

    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        if lights[lightIndex].alpha == lightIsOn {
            lights[lightIndex].alpha = lightIsOff
            lightIndex += 1
        }
        
        if lightIndex > 2 {
            lightIndex = 0
        }
        lights[lightIndex].alpha = lightIsOn
    }
    
}

    
