//
//  ViewController.swift
//  AnimationLab
//
//  Created by Salim Ive on 12/12/15.
//  Copyright © 2015 Braksa Salim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var testView: UIView!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      testView.layer.cornerRadius = 3

      
   }
   
   override func animationDidStart(anim: CAAnimation) {
      
      let a = (anim as! CABasicAnimation).fromValue
      let b = (anim as! CABasicAnimation).toValue
      
      print("Move from \(a) to \(b) starts at: \((testView.layer.presentationLayer() as! CALayer).position.x)")
      
   }

   @IBAction func animate() {
      
      // Declare Source / Destination Point
      let a: CGFloat = CGFloat(random() % 300)
      let b: CGFloat = CGFloat(random() % 300)
      
      // Describe animation
      let animation = CABasicAnimation(keyPath: "position.x")
      animation.delegate = self
      animation.fromValue = a
      testView.layer.position.x = b       // Maybe I should disable implicit animations ?
      animation.toValue = b
      animation.duration = 3
//      animation.fillMode = kCAFillModeBackwards
//      animation.removedOnCompletion = false
      
//      let pausedTime = testView.layer.convertTime(CACurrentMediaTime(), fromLayer: nil)
      testView.layer.speed = 0
//      print("Paused Time: \(pausedTime)")
      
      // Add
      testView.layer.addAnimation(animation, forKey: "Animation")
      
      testView.layer.timeOffset = 0 // pausedTime
      
   }

   @IBAction func slide(sender: UISlider) {
      
    testView.layer.timeOffset = Double(sender.value) * 3
      
   }
   
}

