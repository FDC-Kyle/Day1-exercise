//
//  ProductCell.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/17/24.
//

import UIKit


class ProductCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var productName: UILabel!
    
    var product: Product? {
        didSet{
            displayData()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        productName.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        // Initialization code
    }
    func displayData(){
        guard let product = product else {
            return
        }
        productName.text = product.name
        imageView.image = UIImage(named: product.image)
    }

}
