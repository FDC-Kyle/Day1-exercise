//
//  CrudViewController.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/19/24.
//

import UIKit

class CrudViewController: UIViewController {
    private let getProductModel = ProductsViewModel2()
    private let addProductModel = addProductViewModel()
    private let updateProductModel = UpdateProductViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        getProductModel.fetchProducts()
        addProductModel.addProduct(title: "test")
        updateProductModel.updateProduct(title: "testest")
    }
}
