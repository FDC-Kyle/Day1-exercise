//
//  NoBaseScreen.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/19/24.
//

import UIKit

let lightNotificationKey = "kylevillz.lakers"
let darkNotificationKey = "kylevillz.gsw"

class NoBaseScreen: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
       @IBOutlet weak var chooseButton: UIButton!
       @IBOutlet weak var nameLabel: UILabel!
       
       let light = Notification.Name(rawValue: lightNotificationKey)
       let dark = Notification.Name(rawValue: darkNotificationKey)
       
       deinit {
           NotificationCenter.default.removeObserver(self)
       }
       
       override func viewDidLoad() {
           super.viewDidLoad()
           chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
           createObservers()
       }

       override var preferredStatusBarStyle: UIStatusBarStyle {
           return .lightContent
       }
       
       func createObservers() {
           
           //Light
           NotificationCenter.default.addObserver(self, selector: #selector(NoBaseScreen.updateCharacterImage(notification:)), name: light, object: nil)
           NotificationCenter.default.addObserver(self, selector: #selector(NoBaseScreen.updateNameLabel(notification:)), name: light, object: nil)
           NotificationCenter.default.addObserver(self, selector: #selector(NoBaseScreen.updateBackground(notification:)), name: light, object: nil)
           
           //Dark
           NotificationCenter.default.addObserver(self, selector: #selector(NoBaseScreen.updateCharacterImage(notification:)), name: dark, object: nil)
           NotificationCenter.default.addObserver(self, selector: #selector(NoBaseScreen.updateNameLabel(notification:)), name: dark, object: nil)
           NotificationCenter.default.addObserver(self, selector: #selector(NoBaseScreen.updateBackground(notification:)), name: dark, object: nil)
       }
       
       @objc func updateCharacterImage(notification: NSNotification) {
           
           let isLight = notification.name == light
           let image = isLight ? UIImage(named: "stephencurry")! : UIImage(named: "lebronjames")!
           mainImageView.image = image
       }
       
       @objc func updateNameLabel(notification: NSNotification) {
           
           let isLight = notification.name == light
           let name = isLight ? "Golden State Warriors" : "Los Angeles Lakers"
           nameLabel.text = name
           
       }
       
       @objc func updateBackground(notification: NSNotification) {
           let isLight = notification.name == light
           let color = isLight ? UIColor.yellow : UIColor.purple
           view.backgroundColor = color
       }
       
       
       @IBAction func chooseButtonTapped(_ sender: UIButton) {
           let vc = NoSelectionScreen()
           vc.modalPresentationStyle = .fullScreen
           self.present(vc, animated: true, completion: nil)
       }

}
