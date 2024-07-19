//
//  NoSelectionScreen.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/19/24.
//

import UIKit

class NoSelectionScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func lakersButtonTapped(_ sender: UIButton) {
            let name = Notification.Name(rawValue: darkNotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            dismiss(animated: true, completion: nil)
        }

        @IBAction func gswButtonTapped(_ sender: UIButton) {
            let name = Notification.Name(rawValue: lightNotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            dismiss(animated: true, completion: nil)
        }

}
