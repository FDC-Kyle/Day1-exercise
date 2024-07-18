//
//  SignInViewController.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/16/24.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var productList: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var appleButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register as an observer for the "UserLoggedOut" notification
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(handleUserLogout(notification:)),
                                               name: Notification.Name("UserLoggedOut"),
                                               object: nil)
        
        // Simulate logout action (assuming you want to initiate logout from here)
        let appleVC = appleViewController()
        appleVC.userId = "testUserId123"
        // Optionally perform logout directly
        appleVC.doLogout()
        // Add corner radius to loginView
        loginView.layer.cornerRadius = 20
        loginView.layer.masksToBounds = true
        
        // Add border to loginButton
        loginButton.layer.cornerRadius = 15
        loginButton.layer.borderWidth = 1.0
        loginButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Add border to loginButton
        googleButton.layer.cornerRadius = 15
        googleButton.layer.borderWidth = 1.0
        googleButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Add border to loginButton
        facebookButton.layer.cornerRadius = 15
        facebookButton.layer.borderWidth = 1.0
        facebookButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Add border to loginButton
        appleButton.layer.cornerRadius = 15
        appleButton.layer.borderWidth = 1.0
        appleButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Add border to loginButton
        productList.layer.cornerRadius = 15
        productList.layer.borderWidth = 1.0
        productList.layer.borderColor = UIColor.lightGray.cgColor
        
    }
    
    // Selector function that will be called when the notification is received
        @objc func handleUserLogout(notification: Notification) {
            if let userId = notification.userInfo?["userId"] as? String {
                print("Received logout notification for userId: 1")
                // Perform any necessary actions upon logout
            }
        }
        
        deinit {
            // Remove observer in deinit to avoid memory leaks
            NotificationCenter.default.removeObserver(self)
        }

    
//    @IBAction func loginButton(_ sender: Any) {
//        let vc = TeacherListViewController()
////        vc.modalPresentationStyle = .fullScreen
//        self.navigationController?.pushViewController(vc, animated: true)
////        self.present(vc, animated: true)
//    }
    
    @IBAction func productListButton(_ sender: Any) {
        let vc = ProductsViewController()
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func signUpButton(_ sender: Any) {
        let vc = CustomTabBarController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
//    @IBAction func FirstViewButton(_ sender: Any) {
//        let vc = FirstViewController()
//        self.navigationController?.pushViewController(vc, animated: true)
//    }
}

