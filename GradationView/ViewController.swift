//
//  ViewController.swift
//  GradationView
//
//  Created by Masaki Horimoto on 2016/09/23.
//  Copyright © 2016年 Masaki Horimoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gradationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.bounds
        
        let color_1 = UIColor(red: 1.0, green: 0.7, blue: 0.7, alpha: 1.0).cgColor
        let color_2 = UIColor(red: 0.7, green: 1.0, blue: 0.7, alpha: 1.0).cgColor
        let color_3 = UIColor(red: 0.7, green: 0.7, blue: 1.0, alpha: 1.0).cgColor
        gradient.colors = [color_1, color_2, color_3]
        
        let position_1 = NSNumber(value: 0.0 as Float)
        let position_2 = NSNumber(value: 0.5 as Float)
        let position_3 = NSNumber(value: 1.0 as Float)
        
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.locations = [position_1, position_2, position_3]
        
        self.gradationView.layer.insertSublayer(gradient, at: 0)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

