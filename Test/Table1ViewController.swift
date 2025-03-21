//
//  3TableViewController.swift
//  Test
//
//  Created by apple on 21/03/2025.
//

import UIKit

class Table1ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //IB -> interface builder
    @IBOutlet weak var table: UITableView!
    
   
    struct Data{
        let title: String
        let imageName: String
    }
    
    let data: [Data] = [
        Data(title: "Baby Girl", imageName: "BabyGirl"),
        Data(title: "Face Recognition Module", imageName: "face-recognition-icon"),
        Data(title: "Hand With Mobile Phone", imageName: "handWithMobile"),
        Data(title: "Photo Gallery Spline Asset", imageName: "photoGallery_spline")
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
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = d.title
        cell.iconImageView.image = UIImage(named: d.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
