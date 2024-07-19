//
//  ProductsViewModel.swift
//  iOSTraining
//
//  Created by FDC-EYAN-NC-SA-IOS on 7/19/24.
//

// MARK: - Source of products api: https://dummyjson.com/docs/products

import Foundation
import Combine

struct ProductList: Decodable {
    var products: [Product1] = []
}

struct Product1: Decodable {
    let id: Int
    let title: String
    let description: String
    let images: [String]
}

class ProductsViewModel {
    private(set) var productList = ProductList()
    private let productUrlString = "https://dummyjson.com/products"
    private var cancellables = Set<AnyCancellable>()
    
    init() {}
    
    func fetchProducts() {
        guard let url = URL(string: productUrlString) else {
            return
        }
        
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//              if let error = error {
//                print("Error: \(error.localizedDescription)")
//                return
//              }
//              guard let data = data else {
//                print("No data received")
//                return
//              }
//               
//              // Process the data
//              let decoder = JSONDecoder()
//              decoder.keyDecodingStrategy = .convertFromSnakeCase
//               
//              do {
//                let productList = try decoder.decode(ProductList.self, from: data)
//                  print(productList.products.last ?? "")
//              } catch {
//                print(error)
//              }
//            }
//            task.resume()
        
        APIHelper.shared.get(url: url)
            .map(\.data)
            .decode(type: ProductList.self, decoder: JSONDecoder())
                .receive(on: DispatchQueue.main)
                .sink { completion in
                    switch completion {
                    case .finished:
                        print("Request completed successfully")
                    case .failure(let error):
                        print("Request failed with error: \(error)")
                    }
                } receiveValue: { decodedValue in
                    self.productList = decodedValue
                    print(self.productList)
                }
                .store(in: &cancellables)
    }
}
