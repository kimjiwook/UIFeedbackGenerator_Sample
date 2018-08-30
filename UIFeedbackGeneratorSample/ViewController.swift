//
//  ViewController.swift
//  UIFeedbackGeneratorSample
//
//  Created by JW_Macbook on 2018. 8. 30..
//  Copyright © 2018년 JW_Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// UIButton Touch Up Inside Action
    ///
    /// - Parameter sender: UIButton (tag)
    @IBAction func doFeedbackGenerator(_ sender: Any) {
        let senderButton:UIButton = sender as! UIButton
        
        switch senderButton.tag {
        case 1:
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.success)
            
        case 2:
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.warning)
            
        case 3:
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.error)

        case 4:
            let generator = UIImpactFeedbackGenerator(style: .light)
            generator.impactOccurred()
            
        case 5:
            let generator = UIImpactFeedbackGenerator(style: .medium)
            generator.impactOccurred()
            
        case 6:
            let generator = UIImpactFeedbackGenerator(style: .heavy)
            generator.impactOccurred()
        
        default:
            let generator = UISelectionFeedbackGenerator()
            generator.selectionChanged()
        }
    }
}

