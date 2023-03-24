//
//  ViewController.swift
//  task1-week2
//
//  Created by Alief Ahmad Azies on 20/02/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var dataJam: [Jam] = []
    
    let tableView : UITableView = {
        var tv = UITableView()
        return tv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
    }
    
    fileprivate func inputDummyData() {
        let data1 = Jam(nama: "Jam tangan murah", harga: "20.000", tanggal: "05 September 2022", namaGambar: "jam1", stok: 10,berat: 1000)
        let data2 = Jam(nama: "Jam tangan keren", harga: "120.000", tanggal: "23 Februari 2022", namaGambar: "jam2", stok: 1, berat: 210)
        let data3 = Jam(nama: "Jam tangan pria", harga: "180.000", tanggal: "2 April 2022", namaGambar: "jam3", stok: 2, berat: 400)
        let data4 = Jam(nama: "Jam tangan wanita", harga: "1.220.000", tanggal: "1 Januari 2023", namaGambar: "jam4", stok: 30, berat: 110)
        let data5 = Jam(nama: "Jam tangan anak", harga: "10.000", tanggal: "4 Desember 2021", namaGambar: "jam5", stok: 100, berat: 800)
        let data6 = Jam(nama: "Jam tangan terbaik", harga: "10.220.000", tanggal: "30 Desember 2020", namaGambar: "jam6", stok: 5, berat: 1000)
        let data7 = Jam(nama: "Jam tangan mahal", harga: "15.120.000", tanggal: "31 Januari 2023", namaGambar: "jam7", stok: 24, berat: 120)
        let data8 = Jam(nama: "Jam tangan olahraga", harga: "890.000", tanggal: "14 Maret 2022", namaGambar: "jam8", stok: 10, berat: 500)
        
        dataJam.append( data1)
        dataJam.append(data2)
        dataJam.append(data3)
        dataJam.append(data4)
        dataJam.append(data5)
        dataJam.append(data6)
        dataJam.append(data7)
        dataJam.append(data8)
    }
    
    fileprivate func tableViewSetup() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
        
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setup() {
        view.addSubview(tableView)
        
        inputDummyData()
        
        tableViewSetup()
    

    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier, for: indexPath) as? CustomCell else { return UITableViewCell() }
        cell.setup()
        cell.productImage.image = UIImage(named: dataJam[indexPath.row].namaGambar)
        cell.productNameLabel.text = dataJam[indexPath.row].nama
        cell.productPriceLabel.text = "Rp\(dataJam[indexPath.row].harga)"
        cell.productDateLabel.text = dataJam[indexPath.row].tanggal
        cell.addShadow(backgroundColor: .white, cornerRadius: 13, shadowRadius: 5, shadowOpacity: 0.1, shadowPathInset: (dx: 16, dy: 16), shadowPathOffset: (dx: 0, dy: 2))
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataJam.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigateToDetailView(dataJam[indexPath.row])
    }
}
