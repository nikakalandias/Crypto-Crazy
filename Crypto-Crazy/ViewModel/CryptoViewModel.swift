//
//  CryptoViewModel.swift
//  Crypto-Crazy
//
//  Created by Nika Kalandia on 29.11.2021.
//

import Foundation

struct CryptoListViewModel {
    
    let cryptoCurrencyList: [CryptoCurrency]
    
    func numberOfRowsInSection() -> Int {
         return self.cryptoCurrencyList.count
     }
     
     func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
         let crypto = self.cryptoCurrencyList[index]
         return CryptoViewModel(cryptoCurrency: crypto)
     }
}

struct CryptoViewModel {
    
    let cryptoCurrency: CryptoCurrency
    
    
    var currency: String {
        return self.cryptoCurrency.currency
    }
    
    var price: String {
        return self.cryptoCurrency.price
    }
}

