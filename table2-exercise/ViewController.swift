//
//  ViewController.swift
//  table2-exercise
//
//  Created by Default User on 3/11/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let teams = ["Barca", "Man City", "Man Utd", "Liverpool", "Dortmund"]
    let links = ["https://www.fcbarcelona.com", "https://www.mancity.com", "https://www.manutd.com", "https://www.liverpoolfc.com", "https://www.bvb.de"]
    let images = ["fc.png", "jays.jpg", "leafs.png", "marlies.jpeg", "raptors.jpg"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableCell: CustomCellTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CustomCellTableViewCell ?? CustomCellTableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        
        let rowNum = indexPath.row
        let team = teams[rowNum]
        let site = links[rowNum]
        let img = UIImage(named: images[rowNum])
        
        tableCell.primaryLabel.text = team
        tableCell.secondaryLabel.text = site
        tableCell.img.image = img
        tableCell.accessoryType = .disclosureIndicator
        
        return tableCell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let d = UIApplication.shared.delegate as! AppDelegate
        d.link = links[indexPath.row]
        performSegue(withIdentifier: "homeToWebsite", sender: nil)
    }
    
    @IBAction func goHome(sender: UIStoryboardSegue) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

