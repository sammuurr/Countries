//
//  ViewControllerOHa.swift
//  Countries
//
//  Created by ADMIMN on 15.12.2020.
//

import UIKit

class ViewControllerOHa: UIViewController {

    
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
    @IBOutlet var sosed: UILabel!
    @IBOutlet var flag: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadData()
    }
    

    func loadData() {
        DispatchQueue.global(qos: .userInteractive).async { [self] in
            DispatchQueue.main.async {
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
                            if i > 0 {text.append("\n")}
                            
                            if vallete.symbol != nil{
                                text.append("\(vallete.code!)    \(vallete.symbol!)")
                            }else{
                                text.append("\(vallete.code!)")
                            }
                        }
                        
                    }
                    return text
                    
                }()
                domens.text = {
                    var text:String = ""
                    
                    for i in 0..<country!.topLevelDomain.count{
                        let domens = country!.topLevelDomain[i]
                        
                        if i > 0 {text.append("\n")}
                        text.append("\(domens)")
                           
                    }
                    return text
                    
                }()
                
                area.text = {
                    if country!.alpha2Code == "RU" {
                        return "17 125 191 км²"
                    }
                    
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
                    text.remove(at: text.index(text.endIndex, offsetBy: -1))
                    text.remove(at: text.index(text.endIndex, offsetBy: -1))
                    
                    text.append(" км²")
                    
                    return text
                }()
                people.text = {
                    
                    var count:Float = Float(String((country?.population)!).count)
                    var text = String((country?.population)!)
                    
                    if count > 3{
                        var x = (count/3)
                        x.round(.down)
                        var im = Int(3 * x)
                        
                        let a = text[text.index(text.endIndex, offsetBy: -1)]
                        text.remove(at: text.index(text.endIndex, offsetBy: -1))
                        
                        for i in 0..<Int(x){
                            text.insert(.init(" "), at: text.index(text.endIndex, offsetBy: -im + 1))
                            im = im - 3
                        }
                        text.append("\(a) чел")
                    }
                    return text
                }()
                
                cod2.text = country!.alpha2Code
                cod3.text = country!.alpha3Code
                telphoneCod.text = {
                    var text:String = ""
                    
                    for i in 0..<country!.callingCodes.count{
                        let cod = country!.callingCodes[i]
                        
                        if i > 0 {text.append("\n")}
                        text.append("+\(cod)")
                           
                    }
                    return text
                    
                }()
                
                sosed.text = {
                    var text:String = ""
                    var soseds = CountryMethods().getCountres(cod2: country!.borders)
                    
                    if soseds == nil { return ""}
                    
                    for i in 0..<soseds!.count{
                        let cod = soseds![i].name
                        
                        if i > 0 {text.append("\n")}
                        text.append("\(cod)")
                           
                    }
                    return text
                    
                }()
            }
        }
        DispatchQueue.global(qos: .userInitiated).async { [self] in
            var url = URL(string: "https://www.countryflags.io/\(country!.alpha2Code)/flat/64.png")
            url = URL(string: "https://flagpedia.net/data/flags/normal/\(country!.alpha2Code.lowercased()).png")
            
            let data = try? Data(contentsOf: url!)
            
            DispatchQueue.main.async {
                flag.image = UIImage(data: data!)
            }
        }
    }
    

}
