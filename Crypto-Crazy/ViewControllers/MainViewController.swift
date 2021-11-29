//
//  ViewController.swift
//  Crypto-Crazy
//
//  Created by Nika Kalandia on 27.11.2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        
        let url = URL(string: "https://api.cryptorank.io/v1/currencies?api_key=e726827423f7d0be30befe4c1a1f70ddb24cb36aea463a02e96a829c6110")!
        
        WebService().getData(url: url) { (cryptoCurr) in
            if let cryptoCurr = cryptoCurr {
                print(cryptoCurr)
            }
        }
        
        super.viewDidLoad()
        buttonOutlet.layer.cornerRadius = 17
        buttonOutlet.layer.masksToBounds = true
        
        
    }

    @IBAction func buttonClicked(_ sender: Any) {
        performSegue(withIdentifier: "toPriceVC", sender: nil)
    }
    
}

