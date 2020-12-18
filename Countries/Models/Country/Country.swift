//
//  Country.swift
//  Countries
//
//  Created by ADMIMN on 14.12.2020.
//

import Foundation


struct Country: Decodable{
    var name: String
    var topLevelDomain:[String] //
    var alpha2Code:String
    var alpha3Code:String
    var callingCodes:[String] //
    var capital:String
    var altSpellings:[String] //
    var region:String
    var population:Int
    var demonym:String
    var area:Float?
    var timezones:[String] //
    var borders:[String] //
    var nativeName:String
    var currencies:[currencie] //
    var languages:[language]
    var translations:translations //
    var flag:String
    var regionalBlocs:[regionalBloc] //
    
}

struct currencie: Decodable{
    var code:String?
    var name:String?
    var symbol:String?
}

struct language: Decodable{
    var name:String
    var nativeName:String
}
struct translations: Decodable{
    var de:String?
    var es:String?
    var fr:String?
    var ja:String?
    var it:String?
    var br:String?
    var pt:String?
    var nl:String?
    var hr:String?
    var fa:String?
}

struct regionalBloc: Decodable{
    var acronym:String
    var name: String
}
