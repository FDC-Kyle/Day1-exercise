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
        
        let button = UIButton(type: .custom)
        
        let appleImage = UIImage(named: "large_apple_image")
        button.setBackgroundImage(appleImage, for: .normal)
        
        let buttonSize = CGSize(width: 200, height: 200)
        button.frame = CGRect(x: (view.bounds.width - buttonSize.width) / 2,
                              y: (view.bounds.height - buttonSize.height) / 2,
                              width: buttonSize.width,
                              height: buttonSize.height)
        button.addTarget(self, action: #selector(didTapAppleButton), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func didTapAppleButton() {
        doLogout()
    }
    
    func doLogout() {
        NotificationCenter.default.post(name: Notification.Name("UserLoggedOut"),
                                        object: nil,
                                        userInfo: ["userId": userId])
    }
}
