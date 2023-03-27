//
//  ProductListViewModel.swift
//  Week2-Day1
//
//  Created by Alief Ahmad Azies on 24/03/23.
//

import Foundation
import UIKit

protocol ProductListViewModelProtocol {
    var urlString: String { get set }
    var bindProductData: (([Product]?) -> ())? { get set }
    func fetchDataProduct()
}

class ProductListViewModel: ProductListViewModelProtocol {
    
    private var apiService: APIServiceProtocol?
    
    var data: [Product]?
    
    var urlString: String
    
    var bindProductData: (([Product]?) -> ())?
    
    init(urlString: String, apiService: APIServiceProtocol) {
        self.urlString = urlString
        self.apiService = apiService
        
        if let url = URL(string: urlString) {
            self.apiService?.get(url: url)
        }
        
        fetchDataProduct()
    }
    
    func fetchDataProduct() {
        self.apiService?.callAPI(model: [Product].self, completion: { response in
            switch response {
            case .success(let success):
                self.bindProductData?(success)
            case .failure(_):
                self.bindProductData?(nil)
            }
        })
    }
    
    
}
