//
//  LoginViewController.swift
//  Test
//
//  Created by apple on 19/03/2025.
//


import UIKit

class LoginViewController: UIViewController {
    
    let gradientLayer = CAGradientLayer()
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        
        loginLabel.font = UIFont.preferredFont(forTextStyle: .title1)
        //UIFont.boldSystemFont(ofSize: loginLabel.font.pointSize)
        
        googleButton.layer.borderWidth = 0.5
        googleButton.layer.borderColor = UIColor.gray.cgColor
        googleButton.layer.cornerRadius = 10
        
        facebookButton.layer.borderWidth = 0.5
        facebookButton.layer.borderColor = UIColor.gray.cgColor
        facebookButton.layer.cornerRadius = 10
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer.frame = view.bounds
    }

    func setGradientBackground() {
        gradientLayer.frame = view.bounds

        gradientLayer.colors = [
            UIColor.systemCyan.cgColor,
            UIColor.systemGreen.cgColor
        ]
        
        // Seting gradient direction (top to bottom)
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        
        // Insert the gradient layer below everything
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

