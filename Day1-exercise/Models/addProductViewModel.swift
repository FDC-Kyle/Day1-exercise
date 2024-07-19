//
//  addProductViewModel.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/19/24.
//

import Foundation
import Combine

struct AddProductRequest: Encodable {
    let title: String
    // Add more properties as needed for your API
}

struct ProductResponse: Decodable {
    let title: String
    // Add more properties as needed for your API
}

class addProductViewModel: ObservableObject {
    @Published var product: ProductResponse?
    private let addProductUrlString = "https://dummyjson.com/products/add"
    private var cancellables = Set<AnyCancellable>()
    
    func addProduct(title: String) {
        guard let url = URL(string: addProductUrlString) else {
            print("Invalid URL")
            return
        }
        
        let requestBody = AddProductRequest(title: title)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            request.httpBody = try JSONEncoder().encode(requestBody)
        } catch {
            print("Error encoding request body: \(error)")
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: ProductResponse.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .finished:
                    print("Product added successfully")
                case .failure(let error):
                    print("Error adding product: \(error)")
                }
            } receiveValue: { [weak self] product in
                self?.product = product
                print("Added product:", product)
                // Handle success - maybe update UI or perform further actions
            }
            .store(in: &cancellables)
    }
}

