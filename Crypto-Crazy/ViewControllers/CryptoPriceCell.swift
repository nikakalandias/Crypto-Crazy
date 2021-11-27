//
//  CryptoCell.swift
//  Crypto-Crazy
//
//  Created by Nika Kalandia on 27.11.2021.
//

import UIKit

class CryptoPriceCell: UITableViewCell {

    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var imageBitcoin: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
