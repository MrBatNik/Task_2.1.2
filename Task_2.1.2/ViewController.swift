    //
    //  ViewController.swift
    //  Task_2.1.2
    //
    //  Created by Никита Бат on 19.10.2021.
    //

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 70
        yellowView.layer.cornerRadius = 70
        greenView.layer.cornerRadius = 70
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 35)
    }
    
    @IBAction func toggleTheButton() {
        startButton.setTitle("NEXT", for: .normal)

        if redView.layer.opacity == 1 {
            redView.layer.opacity = 0.3
            yellowView.layer.opacity = 1
        } else if yellowView.layer.opacity == 1 {
            yellowView.layer.opacity = 0.3
            greenView.layer.opacity = 1
        } else {
            greenView.layer.opacity = 0.3
            redView.layer.opacity = 1
        }
    }
    
}

