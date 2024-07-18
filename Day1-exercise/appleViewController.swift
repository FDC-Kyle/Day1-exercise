//
//  appleViewController.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/18/24.
//

import UIKit

class appleViewController: UIViewController {
    var userId: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a UIButton
        let button = UIButton(type: .custom)
        
        // Set the custom image for the button
        let appleImage = UIImage(named: "large_apple_image") // Replace with your actual image name
        button.setBackgroundImage(appleImage, for: .normal)
        
        // Calculate button size based on the image size (adjust as needed)
        let buttonSize = CGSize(width: 200, height: 200) // Example size, adjust as needed
        
        // Calculate button frame to center it in the view
        button.frame = CGRect(x: (view.bounds.width - buttonSize.width) / 2,
                              y: (view.bounds.height - buttonSize.height) / 2,
                              width: buttonSize.width,
                              height: buttonSize.height)
        
        // Add action for button tap
        button.addTarget(self, action: #selector(didTapAppleButton), for: .touchUpInside)
        
        // Add button to view
        view.addSubview(button)
    }
    
    @objc func didTapAppleButton() {
        // Perform logout logic
        doLogout()
    }
    
    func doLogout() {
        // Perform logout logic
        
        // Assuming userId is set somewhere before logout
        NotificationCenter.default.post(name: Notification.Name("UserLoggedOut"),
                                        object: nil,
                                        userInfo: ["userId": userId])
    }
}
