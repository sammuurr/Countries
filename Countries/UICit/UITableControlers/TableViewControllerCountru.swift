//
//  TableViewControllerCountru.swift
//  Countries
//
//  Created by ADMIMN on 14.12.2020.
//

import UIKit

class TableViewControllerCountru: UITableViewController {

    var countrys:[Country]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "\(countrys!.count) стран"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return countrys?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellCountry
        let i = indexPath.row
        
        cell.countryName.text = countrys![i].name
        
        return cell
    }
  
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "stranadwqdwqd") as! ViewControllerOHa
        
        vc.country = countrys![indexPath.row]
        
        self.show(vc, sender: vc)
    }
}
