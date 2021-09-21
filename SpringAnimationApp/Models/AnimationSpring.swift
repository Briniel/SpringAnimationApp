//
//  AnimationSpring.swift
//  SpringAnimationApp
//
//  Created by Михаил Иванов on 21.09.2021.
//

import Foundation

struct AnimationSpring {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double

    static func getAnimations() -> [AnimationSpring] {
        [AnimationSpring(preset: "swing",
                   curve: "easeIn",
                   force: randomDouble(from: 0.5, to: 1),
                   duration: randomDouble(from: 0.1, to: 0.7),
                   delay: randomDouble(from: 0.1, to: 0.5)),

         AnimationSpring(preset: "fadeInUp",
                   curve: "easeInQuart",
                   force: randomDouble(from: 0.5, to: 1),
                   duration: randomDouble(from: 0.1, to: 0.7),
                   delay: randomDouble(from: 0.1, to: 0.5)),
         
         AnimationSpring(preset: "pop",
                   curve: "easeInCirc",
                   force: randomDouble(from: 0.5, to: 1),
                   duration: randomDouble(from: 0.1, to: 0.7),
                   delay: randomDouble(from: 0.1, to: 0.5)),
         
         AnimationSpring(preset: "squeezeLeft",
                   curve: "easeInCubic",
                   force: randomDouble(from: 0.5, to: 1),
                   duration: randomDouble(from: 0.1, to: 0.7),
                   delay: randomDouble(from: 0.1, to: 0.5)),
         
         AnimationSpring(preset: "slideUp",
                   curve: "easeInBack",
                   force: randomDouble(from: 0.5, to: 1),
                   duration: randomDouble(from: 0.1, to: 0.7),
                   delay: randomDouble(from: 0.1, to: 0.5)),
         
         AnimationSpring(preset: "shake",
                   curve: "easeInExpo",
                   force: randomDouble(from: 0.5, to: 1),
                   duration: randomDouble(from: 0.1, to: 0.7),
                   delay: randomDouble(from: 0.1, to: 0.5)),
         
         AnimationSpring(preset: "flash",
                   curve: "easeInQuart",
                   force: randomDouble(from: 0, to: 1),
                   duration: randomDouble(from: 0, to: 0.7),
                   delay: randomDouble(from: 0, to: 0.5))]
    }
    
    static func randomDouble(from x : Double, to y : Double) -> Double {
        round(100 * Double.random(in: x...y))/100
    }
}
