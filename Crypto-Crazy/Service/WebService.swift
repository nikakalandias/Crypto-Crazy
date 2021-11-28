//
//  WebService.swift
//  Crypto-Crazy
//
//  Created by Nika Kalandia on 28.11.2021.
//

import Foundation

class WebService{
    
    func getData(url: URL, completion: @escaping ([cryptoModel]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
                
            }else if let data = data {
                
                let cryptoList = try? JSONDecoder().decode([cryptoModel].self, from: data)
                completion(cryptoList)
            }
            
        }.resume()
        
    }
}