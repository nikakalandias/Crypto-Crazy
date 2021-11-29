//
//  WebService.swift
//  Crypto-Crazy
//
//  Created by Nika Kalandia on 28.11.2021.
//

import Foundation

class WebService{
    
    func getData(url: URL, completion: @escaping (CryptoTotalData?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
                
            }else if let data = data {
                print(data)
                let cryptoList = try? JSONDecoder().decode(CryptoTotalData.self, from: data)
                print(cryptoList ?? "AA")
                completion(cryptoList)
            }
            
        }.resume()
        
    }
}
