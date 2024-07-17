//
//  ProductsViewController.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/17/24.
//

import UIKit

struct Product{
    let name : String
    let image : String
}

class ProductsViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    var products: [Product] = [
        Product(name:"Cards", image: "creditcard" ),
        Product(name:"Cards", image: "creditcard" ),
        Product(name:"Cards", image: "creditcard" ),
        Product(name:"Cards", image: "creditcard" ),
        Product(name:"Cards", image: "creditcard" ),
        Product(name:"Cards", image: "creditcard" ),
        Product(name:"Cards", image: "creditcard" ),
        Product(name:"Cards", image: "creditcard" )
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "ProductCell", bundle: nil)
        self.collectionView.register(nib, forCellWithReuseIdentifier: "ProductCell")
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension ProductsViewController:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            cell.product = products[indexPath.row]
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // add condition for other device ipad reearch ui scroll view, ui tap gesture recognizer, ui longpress recognizer, ui oan gesture recognizer sean allen
        let itemWidth = (collectionView.bounds.width - 20)/3
        return CGSize(width: itemWidth, height: itemWidth)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
