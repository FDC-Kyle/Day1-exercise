//
//  TableViewHeadwer.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/16/24.
//

import UIKit

class TableViewHeadwer: UIView {

    private let imageView: UIImageView = {
            let iv = UIImageView()
            iv.contentMode = .scaleAspectFit
            iv.image = UIImage(named: "nativecamp_banner")
            iv.tintColor = .label
            return iv
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            self.addSubview(imageView)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                imageView.heightAnchor.constraint(equalToConstant: 200),
            ])
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

}
