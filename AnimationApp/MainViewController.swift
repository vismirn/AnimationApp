//
//  ViewController.swift
//  AnimationApp
//
//  Created by Viktor Smirnov on 07.11.2023.
//

import UIKit
import SpringAnimation

class MainViewController: UIViewController {
    
    @IBOutlet weak var viewLabel: SpringView!
    @IBOutlet weak var nameAnimationLabel: UILabel!
    @IBOutlet weak var buttonOutlet: SpringButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func actionAnimationButton(_ sender: SpringButton) {
        changeViewPop()
        
    }
    
    func changeViewPop() {
        let index = Int.random(in: 0..<AnimationPreset.allCases.count)
        let element = AnimationPreset.allCases[index].rawValue
        
        viewLabel.animation = element
        viewLabel.curve = "easeIn"
        viewLabel.force = 2
        viewLabel.duration = 1
        viewLabel.delay = 0.3
        
        nameAnimationLabel.text = element
        buttonOutlet.setTitle(element, for: .normal)
        
        viewLabel.animate()
    }
    
//    func getRandom() -> String {
//        let index = Int.random(0..<Enum.allCases.count)
//        let element = Enum.allCases[index]
//    }

    
    
    
    
    
}

