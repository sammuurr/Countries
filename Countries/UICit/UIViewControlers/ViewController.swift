//
//  ViewController.swift
//  Countries
//
//  Created by ADMIMN on 14.12.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        CountryMethods().getEuropeCountry()
    }


}

