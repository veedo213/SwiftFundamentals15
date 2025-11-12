//
//  ViewController.swift
//  Light
//
//  Created by Vy Do on 11/9/25.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI() // Make sure background matches initial state
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}
