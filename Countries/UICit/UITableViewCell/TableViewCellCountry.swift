//
//  TableViewCellCountry.swift
//  Countries
//
//  Created by ADMIMN on 14.12.2020.
//

import UIKit

class TableViewCellCountry: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet var countryName: UILabel!
    
}
