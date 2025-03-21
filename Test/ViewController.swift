//
//  ViewController.swift
//  Test
//
//  Created by apple on 18/03/2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        myButton.layer.cornerRadius = 10  // Rounded corners
        myButton.layer.borderWidth = 2    // Border width
        myButton.layer.borderColor = UIColor.black.cgColor // Border color
        myButton.clipsToBounds = true
        myButton.layer.shadowOpacity = 0.5
        myButton.layer.shadowOffset = CGSize(width: 2, height: 2)
        myButton.layer.shadowRadius = 4

    }
    
    @IBAction func didTapButton(){
        present(SecondViewController(), animated: true)
    }
    
//    @IBAction func goToLogin(_ sender: UIButton) {
//        let storyboard = UIStoryboard(name: "LoginView", bundle: nil)
//        if let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController {
//            navigationController?.pushViewController(loginVC, animated: true)
//        }
//    }

    @IBAction func goToLogin(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "LoginView", bundle: nil)
        if let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController {
            loginVC.modalPresentationStyle = .fullScreen // Optional
            present(loginVC, animated: true, completion: nil)
        }
    }
    
    @IBAction func goToTable1View(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Table1View", bundle: nil)
        if let tableVC = storyboard.instantiateViewController(withIdentifier: "Table1ViewController") as? Table1ViewController {
            tableVC.modalPresentationStyle = .fullScreen
            present(tableVC, animated: true, completion: nil)
        }
    }

}


class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    }


}
