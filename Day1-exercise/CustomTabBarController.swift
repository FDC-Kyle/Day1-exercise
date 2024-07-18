//
//  CustomTabBarController.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/18/24.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        
        tabBar.tintColor = .red
    }
    
    // set the view controllers
    private func setupViewControllers() {
        let teacherListVC = setupTab(for: TeacherListViewController(),
                                     with: .red,
                                     title: "First",
                                     imageName: "1.circle",
                                     tag: 0)
        let productListVC = setupTab(for: ProductsViewController(),
                                     with: .green,
                                     title: "Second",
                                     imageName: "2.circle",
                                     tag: 1)
        let settingsListVC = setupTab(for: SettingsViewController(),
                                     with: .blue,
                                     title: "Third",
                                     imageName: "3.circle",
                                     tag: 2)
        viewControllers = [teacherListVC,productListVC,settingsListVC]
    }
    
    
    private func setupTab(for viewController: UIViewController,
                          with color:  UIColor,
                          title: String,
                          imageName: String,
                          tag: Int) -> UIViewController {
        viewController.view.backgroundColor = .black
        viewController.tabBarItem = UITabBarItem(
            title:title,
            image: UIImage(systemName: imageName),
            tag: tag)
        return viewController
    }
}
