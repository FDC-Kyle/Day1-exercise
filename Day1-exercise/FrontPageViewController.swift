//
//  FrontPageViewController.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/15/24.
//

import UIKit

class FrontPageViewController: UIViewController {
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var appleBtn: UIButton!
    @IBOutlet weak var facebookBtn: UIButton!
    @IBOutlet weak var googleBtn: UIButton!
    @IBOutlet weak var overlay: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Welcome To Montek!"
        
        //test
        // Move overlay stack view up by 50 points (adjust as needed)
        overlay.topAnchor.constraint(equalTo: view.topAnchor, constant: 1).isActive = true
        // add overlay
        // Customize overlay appearance
        let overlayView = UIView()
        overlayView.backgroundColor = UIColor.black.withAlphaComponent(0.5) // Semi-transparent black color
        overlayView.translatesAutoresizingMaskIntoConstraints = false
        
        // Add overlay view as a subview on top of the existing stack view
        overlay.addSubview(overlayView)
        
        NSLayoutConstraint.activate([
            overlayView.topAnchor.constraint(equalTo: overlay.topAnchor),
            overlayView.leadingAnchor.constraint(equalTo: overlay.leadingAnchor),
            overlayView.trailingAnchor.constraint(equalTo: overlay.trailingAnchor),
            overlayView.bottomAnchor.constraint(equalTo: overlay.bottomAnchor)
        ])
        // Set corner radius for rounded corners
        signUpBtn.layer.cornerRadius = 10
        
        // login btn
        loginBtn.layer.cornerRadius = 10
        loginBtn.layer.borderWidth = 0.3
        loginBtn.layer.borderColor = UIColor.gray.cgColor
        
        // google btn
        googleBtn.layer.cornerRadius = 10
        googleBtn.layer.borderWidth = 0.3
        googleBtn.layer.borderColor = UIColor.gray.cgColor
        
        // Apple btn
        appleBtn.layer.cornerRadius = 10
        appleBtn.layer.borderWidth = 0.3
        appleBtn.layer.borderColor = UIColor.gray.cgColor
        
        // Facebook btn
        facebookBtn.layer.cornerRadius = 10
        facebookBtn.layer.borderWidth = 0.3
        facebookBtn.layer.borderColor = UIColor.gray.cgColor
        
        // Do any additional setup after loading the view.
        // Assuming signUpBtn is your UIButton instance
        let buttonWidth: CGFloat = 350 
        let buttonHeight: CGFloat = 50// Replace with your desired width
        signUpBtn.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        loginBtn.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        appleBtn.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        facebookBtn.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        googleBtn.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        signUpBtn.widthAnchor.constraint(equalToConstant: buttonWidth).isActive = true
        loginBtn.widthAnchor.constraint(equalToConstant: buttonWidth).isActive = true
        appleBtn.widthAnchor.constraint(equalToConstant: buttonWidth).isActive = true
        facebookBtn.widthAnchor.constraint(equalToConstant: buttonWidth).isActive = true
        googleBtn.widthAnchor.constraint(equalToConstant: buttonWidth).isActive = true
        
        if let navigationBar = navigationController?.navigationBar {
             navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
         }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
