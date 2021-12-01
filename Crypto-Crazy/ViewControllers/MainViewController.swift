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
        

        
        super.viewDidLoad()
        buttonOutlet.layer.cornerRadius = 17
        buttonOutlet.layer.masksToBounds = true
        
        
    }
    


    @IBAction func buttonClicked(_ sender: Any) {

        performSegue(withIdentifier: "toPriceVC", sender: nil)
        
    }
    
}

