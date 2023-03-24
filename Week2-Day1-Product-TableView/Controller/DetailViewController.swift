//
//  DetailViewController.swift
//  task1-week2
//
//  Created by Alief Ahmad Azies on 20/02/23.
//

import UIKit

class DetailViewController: UIViewController {
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
    
    let horizontalLine: UIView = {
        let vw = UIView()
        return vw
    }()
    
    fileprivate func addSubViews() {
        view.addSubview(productDetailImage)
        view.addSubview(productLabel)
        view.addSubview(priceLabel)
        view.addSubview(detailProductTextLabel)
        view.addSubview(detailSizeLabel)
        view.addSubview(detailStockLabel)
        view.addSubview(detailWeightLabel)
        view.addSubview(detailTypeLabel)
        view.addSubview(detailDescLabel)
        view.addSubview(horizontalLine)
    }
    
    fileprivate func setupDetalImage() {
        productDetailImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productDetailImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            productDetailImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            productDetailImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            productDetailImage.heightAnchor.constraint(equalToConstant: 194),
        ])
        productDetailImage.contentMode = .scaleAspectFill
        productDetailImage.layer.masksToBounds = true
        productDetailImage.layer.cornerRadius = 10
        productDetailImage.layer.borderColor = UIColor.systemGray4.cgColor
        productDetailImage.layer.borderWidth = 0.25
    }
    
    fileprivate func setupProductLabel() {
        productLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productLabel.topAnchor.constraint(equalTo: productDetailImage.bottomAnchor, constant: 24),
            productLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24)
        ])
        productLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
    }
    
    fileprivate func setupPriceLabel() {
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: productDetailImage.bottomAnchor, constant: 24),
            priceLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
    }
    
    fileprivate func setupDetailProductTextLabel() {
        detailProductTextLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailProductTextLabel.topAnchor.constraint(equalTo: productLabel.bottomAnchor, constant: 12),
            detailProductTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24)
        ])
        detailProductTextLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        detailProductTextLabel.text = "Detail Product"
    }
    
    fileprivate func setupHorizontalLine() {
        horizontalLine.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            horizontalLine.heightAnchor.constraint(equalToConstant: 1),
            horizontalLine.widthAnchor.constraint(equalToConstant: 320),
            horizontalLine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            horizontalLine.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            horizontalLine.topAnchor.constraint(equalTo: detailProductTextLabel.bottomAnchor, constant: 12)
        ])
        
        horizontalLine.backgroundColor = .lightGray
    }
    
    fileprivate func setupDetailStockLabel() {
        detailStockLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailStockLabel.topAnchor.constraint(equalTo: horizontalLine.bottomAnchor, constant: 12),
            detailStockLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
        ])
        detailStockLabel.font = UIFont.systemFont(ofSize: 12, weight: .thin)
    }
    
    fileprivate func setupDetailSizeLabel() {
        detailSizeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailSizeLabel.topAnchor.constraint(equalTo: detailStockLabel.bottomAnchor, constant: 12),
            detailSizeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32)
        ])
        detailSizeLabel.font = UIFont.systemFont(ofSize: 12, weight: .thin)
    }
    
    fileprivate func setupDetailWeightLabel() {
        detailWeightLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailWeightLabel.topAnchor.constraint(equalTo: detailSizeLabel.bottomAnchor, constant: 12),
            detailWeightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32)
        ])
        detailWeightLabel.font = UIFont.systemFont(ofSize: 12, weight: .thin)
    }
    
    fileprivate func setupDetailDescLabel() {
        detailDescLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailDescLabel.topAnchor.constraint(equalTo: detailTypeLabel.bottomAnchor, constant: 12),
            detailDescLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            detailDescLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32)
        ])
        detailDescLabel.numberOfLines = 0
        detailDescLabel.contentMode = .scaleToFill
        
        detailDescLabel.font = UIFont.systemFont(ofSize: 12, weight: .thin)
    }
    
    fileprivate func extractedFunc() {
        detailTypeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailTypeLabel.topAnchor.constraint(equalTo: detailWeightLabel.bottomAnchor, constant: 12),
            detailTypeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32)
        ])
        detailTypeLabel.font = UIFont.systemFont(ofSize: 12, weight: .thin)
    }
    
    func setup() {
        addSubViews()
        
        setupDetalImage()
        setupProductLabel()
        
        setupPriceLabel()
        
        setupDetailProductTextLabel()
        
        
        setupHorizontalLine()
        
        setupDetailStockLabel()
        
        
        setupDetailSizeLabel()
        
        setupDetailWeightLabel()
        
        extractedFunc()
        
        setupDetailDescLabel()
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
        
    }

}

extension UIViewController {
    func navigateToDetailView(_ jam: Jam? = nil) {
        let vc = DetailViewController()
        vc.productLabel.text = jam?.nama
        vc.productDetailImage.image = UIImage(named: jam?.namaGambar ?? "")
        vc.priceLabel.text = "Rp\(jam?.harga ?? "0")"
        vc.detailStockLabel.text = "Stock                   : \(jam?.stok ?? 0)"
        vc.detailSizeLabel.text = "Size                      : --"
        vc.detailWeightLabel.text = "Weight                 : \(jam?.berat ?? 0)"
        vc.detailTypeLabel.text = "Type                     : Accesories"
        vc.detailDescLabel.text = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et integer turpis fermentum pulvinar adipiscing accumsan, dignissim viverra. Quisque hendrerit ac ipsum, malesuada odio netus. Eu, mauris ullamcorper neque ullamcorper arcu. Amet, condimentum adipiscing enim eu feugiat feugiat pharetra, tristique. Interdum ipsum amet, a nec. Fermentum in viverra suscipit at at sit. Metus condimentum augue erat.
"""
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
