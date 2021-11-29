//
//  CryptoModel.swift
//  Crypto-Crazy
//
//  Created by Nika Kalandia on 28.11.2021.
//

import Foundation

struct CryptoTotalData : Decodable {
    
    let data : [CryptoModel]
}

struct CryptoModel : Decodable {
    
    let name : String
    let values : Values
    
}

struct UsdValues : Decodable {
    
    let price : Double
    
}

struct Values : Decodable {
    
    let usd : UsdValues
}
