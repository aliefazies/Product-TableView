//
//  Product.swift
//  Week2-Day1
//
//  Created by Alief Ahmad Azies on 24/03/23.
//

import Foundation

struct Product: Codable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
    let rating: Rating
}
