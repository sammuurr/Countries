//
//  TableViewControllerMain.swift
//  Countries
//
//  Created by ADMIMN on 14.12.2020.
//

import UIKit

class TableViewControllerMain: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()

    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "countrys") as! TableViewControllerCountru
        
        if indexPath.row == 0 {
            vc.countrys = CountryMethods().getEuropeCountry()
        }else if indexPath.row == 1{
            vc.countrys = CountryMethods().getAsiaCountry()
        }else if indexPath.row == 2{
            vc.countrys = CountryMethods().getAmericasCountry()
        }else if indexPath.row == 3{
            vc.countrys = CountryMethods().getAfricaCountry()
        }else if indexPath.row == 4{
            vc.countrys = CountryMethods().getOceaniaCountry()
        }
        
        self.show(vc, sender: vc)
    }

}
