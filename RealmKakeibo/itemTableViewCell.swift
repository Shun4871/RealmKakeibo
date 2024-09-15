//
//  itemTableViewCell.swift
//  RealmKakeibo
//
//  Created by 柘植俊之介 on 2024/09/16.
//

import UIKit

class itemTableViewCell: UITableViewCell {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var markImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCell(title: String, price: Int, isMarked: Bool) {
        titleLabel.text = title
        priceLabel.text = String(price) + "F"
        if isMarked {
            markImageView.image = UIImage(systemName: "star.fill")
        } else {
            markImageView.image = UIImage (systemName: "star")
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
