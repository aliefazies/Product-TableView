//
//  ProductProvider.swift
//  Week2-Day1
//
//  Created by Alief Ahmad Azies on 24/03/23.
//

import Foundation

protocol APIServiceProtocol {
    mutating func get(url: URL)
    func callAPI<T: Codable>(model: T.Type, completion: @escaping (Result<T, Error>) -> Void)
}

struct ProductProvider: APIServiceProtocol {
    private var url = URL(string: "")
    
    mutating func get(url: URL) {
        self.url = url
    }
    
    func callAPI<T>(model: T.Type, completion: @escaping (Result<T, Error>) -> Void) where T : Decodable, T : Encodable {
        guard let url = self.url else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let productData = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(productData))
                } catch let error {
                    completion(.failure(error))
                }
            }
        }.resume()
    }
}
