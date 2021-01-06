//
//  CountryMethods.swift
//  Countries
//
//  Created by ADMIMN on 14.12.2020.
//

import Foundation

class CountryMethods {
    
    
    func getEuropeCountry() -> [Country]{
        var countrys:[Country]?
        let url = URL(string: "https://restcountries.eu/rest/v2/region/europe")!

        let semaphore = DispatchSemaphore.init(value: 0)
        let task = URLSession.shared.dataTask(with: url) { (data, response, erorr) in
            guard let data = data else {return}
            do {
                
                countrys = try JSONDecoder().decode([Country].self, from: data)
                
                semaphore.signal()
            } catch let erorr {
                print(erorr)
            }
        }
        task.resume()
        semaphore.wait()
        
        return countrys!
    }
    func getAsiaCountry() -> [Country]{
        var countrys:[Country]?
        let url = URL(string: "https://restcountries.eu/rest/v2/region/asia")!

        let semaphore = DispatchSemaphore.init(value: 0)
        let task = URLSession.shared.dataTask(with: url) { (data, response, erorr) in
            guard let data = data else {return}
            do {
                
                countrys = try JSONDecoder().decode([Country].self, from: data)
                
                semaphore.signal()
            } catch let erorr {
                print(erorr)
            }
        }
        task.resume()
        semaphore.wait()
        
        return countrys!
    }
    func getAmericasCountry() -> [Country]{
        var countrys:[Country]?
        let url = URL(string: "https://restcountries.eu/rest/v2/region/Americas")!

        let semaphore = DispatchSemaphore.init(value: 0)
        let task = URLSession.shared.dataTask(with: url) { (data, response, erorr) in
            guard let data = data else {return}
            do {
                
                countrys = try JSONDecoder().decode([Country].self, from: data)
                
                semaphore.signal()
            } catch let erorr {
                print(erorr)
            }
        }
        task.resume()
        semaphore.wait()
        
        return countrys!
    }
    func getAfricaCountry() -> [Country]{
        var countrys:[Country]?
        let url = URL(string: "https://restcountries.eu/rest/v2/region/Africa")!

        let semaphore = DispatchSemaphore.init(value: 0)
        let task = URLSession.shared.dataTask(with: url) { (data, response, erorr) in
            guard let data = data else {return}
            do {
                
                countrys = try JSONDecoder().decode([Country].self, from: data)
                
                semaphore.signal()
            } catch let erorr {
                print(erorr)
            }
        }
        task.resume()
        semaphore.wait()
        
        return countrys!
    }
    func getOceaniaCountry() -> [Country]{
        var countrys:[Country]?
        let url = URL(string: "https://restcountries.eu/rest/v2/region/Oceania")!

        let semaphore = DispatchSemaphore.init(value: 0)
        let task = URLSession.shared.dataTask(with: url) { (data, response, erorr) in
            guard let data = data else {return}
            do {
                
                countrys = try JSONDecoder().decode([Country].self, from: data)
                
                semaphore.signal()
            } catch let erorr {
                print(erorr)
            }
        }
        task.resume()
        semaphore.wait()
        
        return countrys!
    }
    
    func getCountres(cod2:[String]) -> [Country]? {
        var countrys:[Country]?
        var text = "https://restcountries.eu/rest/v2/alpha?codes="
        
        for i in 0..<cod2.count {
            text.append("\(cod2[i]);")
        }
        
        if text == "https://restcountries.eu/rest/v2/alpha?codes="{return nil}
        let url = URL(string: text)!

        let semaphore = DispatchSemaphore.init(value: 0)
        let task = URLSession.shared.dataTask(with: url) { (data, response, erorr) in
            guard let data = data else {return}
            do {
                
                countrys = try JSONDecoder().decode([Country].self, from: data)
                
                semaphore.signal()
            } catch let erorr {
                print(erorr)
            }
        }
        task.resume()
        semaphore.wait()
        
        return countrys!
    }

}
