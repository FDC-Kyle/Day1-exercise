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

class ProductsViewController: UIViewController{
    @IBOutlet weak var collectionView: UICollectionView!
    var products: [Product] = [
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),   
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),   
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),   
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),   
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),   
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" ),   
        Product(name:"The Hunted", image: "hunter" ),
        Product(name:"Twilight Vampires", image: "vampire" ),
        Product(name:"The Hunt Begins", image: "hunter" ),
        Product(name:"I Am The Future", image: "future" ),
        Product(name:"Super Heroes United", image: "superhero" ),
        Product(name:"Dragons Awakened", image: "dragons" )
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "ProductCell", bundle: nil)
        self.collectionView.register(nib, forCellWithReuseIdentifier: "ProductCell")
        navigationController?.navigationBar.titleTextAttributes = [
               NSAttributedString.Key.foregroundColor: UIColor.red,
               NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 40)
           ]
           
        title = "NETFLIX"
        
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
        let isPad = UIDevice.current.userInterfaceIdiom == .pad
        
        var numberOfItemsPerRow: CGFloat = 2
        if isPad {
            numberOfItemsPerRow = 4
        }
        
        let spacingBetweenItems: CGFloat = 10
        let totalSpacing = spacingBetweenItems * (numberOfItemsPerRow - 1)
        let itemWidth = (collectionView.bounds.width - totalSpacing) / numberOfItemsPerRow
        
        return CGSize(width: itemWidth, height: itemWidth)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedProduct = products[indexPath.row]
        let vc = ProductDetailViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.product = selectedProduct
        self.present(vc, animated: true, completion: nil)
    }
}



