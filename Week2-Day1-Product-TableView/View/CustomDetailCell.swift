//
//  CustomDetailCell.swift
//  task1-week2
//
//  Created by Alief Ahmad Azies on 20/02/23.
//

import UIKit

class CustomDetailCell: UITableViewCell {
    
    static let detailCellId: String = "detailCellId"
    
    let productDetailImage: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    
    let productLabel: UILabel = {
        let lb = UILabel()
        return lb
    }()
    
    let priceLabel: UILabel = {
        let lb = UILabel()
        return lb
    }()
    
    let detailProductTextLabel: UILabel = {
        let lb = UILabel()
        return lb
    }()
    
    let detailStockLabel: UILabel = {
        let lb = UILabel()
        return lb
    }()
    
    let detailSizeLabel: UILabel = {
       let lb = UILabel()
        return lb
    }()
    
    let detailWeightLabel: UILabel = {
       let lb = UILabel()
        return lb
    }()

    let detailTypeLabel: UILabel = {
       let lb = UILabel()
        return lb
    }()
    
    let detailDescLabel: UILabel = {
       let lb = UILabel()
        return lb
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
