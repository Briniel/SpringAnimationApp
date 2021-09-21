//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Михаил Иванов on 20.09.2021.
//

import Spring

class ViewController: UIViewController {
   
    @IBOutlet var springView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var animationButton: SpringButton!
    
    private let animations = AnimationSpring.getAnimations()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setAnimationRandom()
    }

    @IBAction func pressSpringButton(_ sender: Any) {
        springView.autostart = false
        
        springView.animation = presetLabel.text ?? ""
        springView.curve = curveLabel.text ?? ""
        springView.force = CGFloat(Double(forceLabel.text ?? "0.0") ?? 0.0)
        springView.duration = CGFloat(Double(durationLabel.text ?? "0.0") ?? 0.0)
        springView.delay = CGFloat(Double(delayLabel.text ?? "0.0") ?? 0.0)
        springView.animate()
        
        setAnimationRandom()
    }
    
    private func setAnimationRandom() {
        let animation = animations.randomElement()
        
        presetLabel.text = animation?.preset
        curveLabel.text = animation?.curve
        forceLabel.text = String(animation?.force ?? 0.0)
        durationLabel.text = String(animation?.duration ?? 0.0)
        delayLabel.text = String(animation?.delay ?? 0.0)
        
        animationButton.setTitle("Run \(animation?.preset ?? "")", for: .normal)
    }
}

