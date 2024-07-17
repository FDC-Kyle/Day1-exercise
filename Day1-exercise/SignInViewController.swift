//
//  SignInViewController.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/16/24.
//

import UIKit

class SignInViewController: UIViewController {
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let vc = TeacherListViewController()
//        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
//        self.present(vc, animated: true)
        
    }
    
    @IBAction func productListButton(_ sender: Any) {
        let vc = ProductsViewController()
//        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func scrollViewButton(_ sender: Any) {
        let vc = TestingScrollViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
