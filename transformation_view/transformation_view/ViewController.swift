//
//  ViewController.swift
//  transformation_view
//
//  Created by Saurav Sagar on 14/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sampleView: UIView!
    
    var axisX = 20
    var axisY = 20
    
    var width = 50
    var height = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        sampleView.layer.cornerRadius = CGFloat(10)
    }
    
    
    @IBAction func chnageSize(_ sender: UIButton) {
        sampleView.frame.origin.x = 20
        sampleView.frame.origin.y = 20
        
        sampleView.frame.size.width = CGFloat(width)
        sampleView.frame.size.height = CGFloat(height)
        
        updateDimention()
    }
    

    @IBAction func chnagePossition(_ sender: UIButton) {
        UIView.animate(withDuration: 1.0, animations: {
            self.sampleView.frame.origin.x = CGFloat(self.axisX)
            self.sampleView.frame.origin.y = CGFloat(self.axisY)
            })
        
        updateAxis()
    }
    
    
    private func updateAxis() {
        
        if ((self.view.frame.maxX - 100) > sampleView.frame.origin.x) {
            axisX += 50
        } else {
            axisX = 20
        }
        
        
        if ((self.view.frame.maxY / 2) > sampleView.frame.origin.y) {
            axisY += 50
        } else {
            axisY = 20
        }
    }
    
    private func updateDimention() {
        
        if (self.view.frame.width > sampleView.frame.width) {
            width += 20
        } else {
            width = 50
        }
        
        
        if ((self.view.frame.height / 2) > sampleView.frame.height) {
            height += 30
        } else {
            height = 50
        }
        
        sampleView.layer.cornerRadius = CGFloat(10)
    }
}

