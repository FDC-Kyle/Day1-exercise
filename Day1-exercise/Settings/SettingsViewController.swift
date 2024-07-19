//
//  SettingsViewController.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/18/24.
//

import UIKit

struct Keys {
    static let prefersDarkMode = "prefersDarkMode"
}

class SettingsViewController: UIViewController {
    
    var isDarkMode = false
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var darkModeSwitch: UISwitch!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        darkModeSwitch.isOn = isDarkMode
        loadStylePreference()
        updateStyle()
    }
    
    func updateStyle() {
        self.view.backgroundColor = self.isDarkMode ? UIColor(red: 40/255, green: 40/255, blue: 40/255, alpha: 1) : .white
        searchBar.barTintColor = self.isDarkMode ? UIColor(red: 40/255, green: 40/255, blue: 40/255, alpha: 1) : .white
    }
    
    @IBAction func darkModeSwitchChanged(_ sender: UISwitch) {
        isDarkMode = sender.isOn
        saveStylePreference()
        updateStyle()
    }
    
    func saveStylePreference() {
        defaults.set(isDarkMode, forKey: Keys.prefersDarkMode)
    }
    
    func loadStylePreference() {
        isDarkMode = defaults.bool(forKey: Keys.prefersDarkMode)
    }
}
