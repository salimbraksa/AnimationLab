//
//  ViewController.swift
//  AnimationLab
//
//  Created by Salim Ive on 12/12/15.
//  Copyright © 2015 Braksa Salim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
   // The testing orange view
   @IBOutlet weak var testView: UIView!
   
   @IBOutlet weak var a: UILabel!
   @IBOutlet weak var c: UILabel!
   
   @IBAction func animate() {
      
      // Define animation
      let a = self.a.center.x
      let c = self.c.center.x
      let animation = CABasicAnimation(keyPath: "position.x")
      animation.duration = 3
      animation.fromValue = a
      testView.layer.position.x = c
      animation.toValue = c
      animation.beginTime = CACurrentMediaTime() - 1.5
      
      testView.layer.addAnimation(animation, forKey: "Animation")
      
   }
   
}

