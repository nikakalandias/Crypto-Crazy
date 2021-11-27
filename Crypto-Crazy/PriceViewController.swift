//
//  CryptoVC.swift
//  Crypto-Crazy
//
//  Created by Nika Kalandia on 27.11.2021.
//

import UIKit

class PriceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var CryptoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CryptoTableView.delegate = self
        CryptoTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CryptoTableView.dequeueReusableCell(withIdentifier: "CryptoCell", for: indexPath) as! CryptoPriceCell
        return cell
    }


}
