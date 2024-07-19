//
//  SelectionScreen.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/19/24.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class SelectionScreen: UIViewController {
    
    var selectionDelegate: SideSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func lakersButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(named: "lebronjames")!, name: "Los Angeles Lakers", color: .purple)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func gswButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(named: "stephencurry")!, name: "Golden State Warriors", color: .yellow)
        dismiss(animated: true, completion: nil)
    }
}
