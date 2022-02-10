//
//  ViewController.swift
//  AnimationApp
//
//  Created by Sergey on 17.01.2022.
//

import Spring
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var viewOutlet: SpringView!
    @IBOutlet weak var runButtonAnimationOutlet: SpringButton!
    
    var currentAnimation: Int = 0
    var currentCurve: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runAnimationButtonPressed(_ sender: SpringButton) {
        let animation = Spring.AnimationPreset.allCases
        let curve = Spring.AnimationCurve.allCases
        viewOutlet.animation = animation[currentAnimation].rawValue
        viewOutlet.curve = curve[currentCurve].rawValue
        viewOutlet.duration = 0.5
        viewOutlet.delay = 0
        viewOutlet.animate()
        runButtonAnimationOutlet.setTitle("Run \(animation[currentAnimation + 1].rawValue)", for: .normal)
        currentAnimation += 1
        currentCurve += 1
        
    }
}

