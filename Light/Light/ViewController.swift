//
//  ViewController.swift
//  Light
//
//  Created by Kartik Sharma on 29/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightButton: UIButton!
    
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    fileprivate func updateUI() {
        if lightOn{
            view.backgroundColor = .white
        } else{
            view.backgroundColor = .black
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

