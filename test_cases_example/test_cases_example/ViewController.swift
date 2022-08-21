//
//  ViewController.swift
//  test_cases_example
//
//  Created by Saurav Sagar on 19/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    let squirtle = Pokemon(type: .Water, attackType: .Water)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelText.text = String(squirtle.type.hashValue)
        
        Single.Shared.changeValue()
        
        print(Planet.mars)
    }
    
    
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}


class Single {
    static var Shared =  Single()
    
    private init() {}
    
    func changeValue() {
        print("i am here")
    }
}
