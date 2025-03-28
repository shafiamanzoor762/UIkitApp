//
//  WeatherView.swift
//  Test
//
//  Created by apple on 26/03/2025.
//

import UIKit

class WeatherViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToSearchWeather(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "SearchWeatherView", bundle: nil)
        if let search_weatherVC = storyboard.instantiateViewController(withIdentifier: "SearchWeatherViewController") as? SearchWeatherViewController {
            search_weatherVC.modalPresentationStyle = .fullScreen
            present(search_weatherVC, animated: true, completion: nil)
        }
    }
}
