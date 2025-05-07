//
//  ProductTableViewCell.swift
//  mobileShoppersProject
//
//  Created by Yassine Lamtalaa on 5/7/25.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewLabel: UIImageView!
    @IBOutlet weak var textFieldLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
