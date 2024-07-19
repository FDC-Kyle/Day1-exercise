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
        let scrollViewVC = setupTab(for: TestingScrollViewController(),
                                     with: .white,
                                     title: "ScrollView",
                                     imageName: "arrow.up.and.down.circle.fill",
                                     tag: 0)
        let teacherListVC = setupTab(for: TeacherListViewController(),
                                     with: .white,
                                     title: "Teachers",
                                     imageName: "pencil.circle",
                                     tag: 0)
        let productListVC = setupTab(for: ProductsViewController(),
                                     with: .white,
                                     title: "Movies",
                                     imageName: "play.circle",
                                     tag: 1)
        let settingsListVC = setupTab(for: SettingsViewController(),
                                     with: .white,
                                     title: "Settings",
                                     imageName: "gearshape.fill",
                                     tag: 2)
        let baseScreenListVC = setupTab(for: BaseScreen(),
                                     with: .white,
                                     title: "NBA",
                                     imageName: "basketball.fill",
                                     tag: 3)


        viewControllers = [teacherListVC,productListVC,settingsListVC,scrollViewVC,baseScreenListVC]
    }
    
    
    private func setupTab(for viewController: UIViewController,
                          with color:  UIColor,
                          title: String,
                          imageName: String,
                          tag: Int) -> UIViewController {
        viewController.tabBarItem = UITabBarItem(
            title:title,
            image: UIImage(systemName: imageName),
            tag: tag)
        return viewController
    }
}
//viewController.view.backgroundColor = .black
