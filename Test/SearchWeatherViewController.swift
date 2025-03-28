//
//  Untitled.swift
//  Test
//
//  Created by apple on 28/03/2025.
//

import UIKit

class SearchWeatherViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //IB -> interface builder
    @IBOutlet weak var table: UITableView!
    
   
    struct WeatherData{
        let temp_deg: String
        let h_presure: String
        let l_presure: String
        let place: String
        let imageName: String
        let condition: String
    }
    
    let data: [WeatherData] = [
        WeatherData(temp_deg: "19", h_presure: "24", l_presure: "18", place: "Rawalpindi", imageName: "moon-cloud-rain", condition: "Rain"),
        WeatherData(temp_deg: "20", h_presure: "21", l_presure: "19", place: "Islamabad", imageName: "cloud-wind",  condition: "Cloudy, Windy"),
        WeatherData(temp_deg: "13", h_presure: "16", l_presure: "8", place: "Lahore", imageName: "night-cloud-rain", condition: "cloud, Rain"),
        WeatherData(temp_deg: "23", h_presure: "21", l_presure: "19", place: "Karachi", imageName: "sun-cloud",  condition: "Partially Sunny")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let d = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SearchWeatherTableViewCell
        cell.label_temp_deg.text = d.temp_deg
        cell.label_presure.text = "H:" + d.h_presure + "°" + "  L:" + d.l_presure + "°"
        cell.label_place.text = d.place
        cell.iconImageView.image = UIImage(named: d.imageName)
        cell.label_condition.text = d.condition
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
