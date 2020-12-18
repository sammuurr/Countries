//
//  ViewControllerContry.swift
//  Countries
//
//  Created by ADMIMN on 15.12.2020.
//

import UIKit

class ViewControllerContry: UIViewController {

    var country:Country? = nil
    @IBOutlet var name: UILabel!
    @IBOutlet var deName: UILabel!
    @IBOutlet var esName: UILabel!
    @IBOutlet var frName: UILabel!
    @IBOutlet var jaName: UILabel!
    @IBOutlet var itName: UILabel!
    @IBOutlet var brName: UILabel!
    @IBOutlet var ptName: UILabel!
    @IBOutlet var nlName: UILabel!
    @IBOutlet var hrName: UILabel!
    @IBOutlet var faName: UILabel!
    
    @IBOutlet var stolica: UILabel!
    @IBOutlet var region: UILabel!
    @IBOutlet var area: UILabel!
    @IBOutlet var people: UILabel!
    
    @IBOutlet var valete: UILabel!
    @IBOutlet var domens: UILabel!
    @IBOutlet var cod2: UILabel!
    @IBOutlet var cod3: UILabel!
    @IBOutlet var telphoneCod: UILabel!
    @IBOutlet var flag: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    func loadData() {
    
        self.title = country?.name
        
        name.text = country?.nativeName ?? ""
        deName.text = country?.translations.de ?? ""
        esName.text = country?.translations.es ?? ""
        frName.text = country?.translations.fr ?? ""
        jaName.text = country?.translations.ja ?? ""
        itName.text = country?.translations.it ?? ""
        brName.text = country?.translations.br ?? ""
        ptName.text = country?.translations.pt ?? ""
        nlName.text = country?.translations.nl ?? ""
        hrName.text = country?.translations.hr ?? ""
        faName.text = country?.translations.fa ?? ""
        
        stolica.text = country?.capital
        region.text = country?.region
        area.text = String(((country?.area)!))
        people.text = String(((country?.population)!))
        
        valete.text = {
            var text:String = ""
            
            for i in 0..<country!.currencies.count{
                let vallete = country!.currencies[i]
                
                if vallete.code != nil{
                    if vallete.symbol != nil{
                        text.append("\(vallete.code)( \(vallete.symbol) )\n")
                    }else{
                        text.append("\(vallete.code)")
                    }
                }
                
            }
            return text
            
        }()
        domens.text = {
            var text:String = ""
            
            for i in 0..<country!.topLevelDomain.count{
                let domens = country!.topLevelDomain[i]
                
                text.append("\(domens)\n")
                   
            }
            return text
            
        }()
        
        area.text = {
            
            var count:Float = Float(String((country?.area)!).count)
            var text = String((country?.area)!)
            
            if count > 3{
                var x = (count/3)
                x.round(.down)
                var im = Int(3 * x)
                
                for i in 0..<Int(x){
                    text.insert(.init(" "), at: text.index(text.endIndex, offsetBy: -im + 1))
                    im = im - 3
                }
            }
            
            return ""
        }()
        
        
        
        
    }
    
}
