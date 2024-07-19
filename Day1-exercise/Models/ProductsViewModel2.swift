//
//  ProductsViewModel2.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/19/24.
//

import Foundation
import Combine

struct ProductList1: Decodable {
    let id: Int
    let title: String
    let description: String
    let images: [String]
}

class ProductsViewModel2 {
    private(set) var productList1: ProductList1?
    private let productUrlString = "https://dummyjson.com/products/1"
    private var cancellables = Set<AnyCancellable>()
    
    func fetchProducts() {
        guard let url = URL(string: productUrlString) else {
            return
        }
        
        
        APIHelper.shared.get(url: url)
            .map(\.data)
            .decode(type: ProductList1.self, decoder: JSONDecoder())
                .receive(on: DispatchQueue.main)
                .sink { completion in
                    switch completion {
                    case .finished:
                        print("Request completed successfully")
                    case .failure(let error):
                        print("Request failed with error: \(error)")
                    }
                } receiveValue: { decodedValue in
                    self.productList1 = decodedValue
//                    print(self.productList1)
                }
                .store(in: &cancellables)
    }
}
