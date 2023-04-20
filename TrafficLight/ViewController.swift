//
//  ViewController.swift
//  TrafficLight
//
//  Created by Денис on 20/04/2023.
//

import UIKit

final class ViewController: UIViewController {
    
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var cornerRadius: CGFloat = 75
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 20  // не округляется
        redLightView.layer.cornerRadius = cornerRadius
        yellowLightView.layer.cornerRadius = cornerRadius
        greenLightView.layer.cornerRadius = cornerRadius
    }
    
    
    @IBAction func startButtonTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        if redLightView.alpha != 1 && yellowLightView.alpha != 1 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
        } else if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        }
    }
}
