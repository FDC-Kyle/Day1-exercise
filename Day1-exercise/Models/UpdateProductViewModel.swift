//
//  UpdateProductViewModel.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/19/24.
//

import Foundation
import Combine

struct UpdateProductRequest: Encodable {
    let title: String
}

struct ProductResponse1: Decodable {
    let title: String
}

class UpdateProductViewModel: ObservableObject {
    @Published var updatedProduct: ProductResponse1?
    private let updateProductUrlString = "https://dummyjson.com/products/1"
    private var cancellables = Set<AnyCancellable>()
    
    func updateProduct(title: String) {
        guard let url = URL(string: "\(updateProductUrlString)/") else {
            print("Invalid URL")
            return
        }
        
        let requestBody = UpdateProductRequest(title: title)
        
        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            request.httpBody = try JSONEncoder().encode(requestBody)
        } catch {
            print("Error encoding request body: \(error)")
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: ProductResponse1.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .finished:
                    print("Product updated successfully")
                case .failure(let error):
                    print("Error updating product: \(error)")
                }
            } receiveValue: { [weak self] product in
                self?.updatedProduct = product
                print("Updated product:", product)
                // Handle success - maybe update UI or perform further actions
            }
            .store(in: &cancellables)
    }
}
