//
//  CustomCell.swift
//  task1-week2
//
//  Created by Alief Ahmad Azies on 20/02/23.
//

import UIKit

class CustomCell: UITableViewCell {
    
    override func layoutSubviews() {
         super.layoutSubviews()
         let bottomSpace: CGFloat = 10.0 // Let's assume the space you want is 10
         self.contentView.frame = self.contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: bottomSpace, right: 0))
    }
    
    static let identifier: String = "cellId"
    
    let productImage: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    
    let productNameLabel: UILabel = {
        let lb = UILabel()
        return lb
    }()
    
    let productDateLabel: UILabel = {
        let lb = UILabel()
        return lb
    }()
    
    let productPriceLabel: UILabel = {
        let lb = UILabel()
        return lb
    }()
    
    let productRating: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    
    let wishlistImage: UIImageView = {
        let iv = UIImageView()
        return iv
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup() {
        addSubview(productImage)
        addSubview(productNameLabel)
        addSubview(productDateLabel)
        addSubview(productPriceLabel)
        addSubview(productRating)
        addSubview(wishlistImage)
        
        selectionStyle = .none
        
        productImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productImage.topAnchor.constraint(equalTo: topAnchor),
            productImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            productImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            productImage.widthAnchor.constraint(equalToConstant: 120),
            productImage.heightAnchor.constraint(equalToConstant: 120)
        ])
        productImage.contentMode = .scaleAspectFit
        
        
        productNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            productNameLabel.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 12),
        ])
        productNameLabel.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        
        productPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productPriceLabel.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 12),
            productPriceLabel.topAnchor.constraint(equalTo: productNameLabel.bottomAnchor, constant: 10)
        ])
        
        productPriceLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        
        productDateLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productDateLabel.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            productDateLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6)
        ])
        productDateLabel.font = UIFont.systemFont(ofSize: 8, weight: .thin)
        
        wishlistImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            wishlistImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            wishlistImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            wishlistImage.widthAnchor.constraint(equalToConstant: 20),
            wishlistImage.heightAnchor.constraint(equalToConstant: 20),
        ])
        
        wishlistImage.image = UIImage(systemName: "heart")
        wishlistImage.tintColor = .black
        
        
    }

}
