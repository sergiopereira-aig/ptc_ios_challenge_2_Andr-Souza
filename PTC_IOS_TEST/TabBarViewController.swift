//
//  TabBarViewController.swift
//  PTC_IOS_TEST
//
//  Created by itsector on 29/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCs()
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                         title: String,
                                         image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        rootViewController.navigationItem.title = title
        return navController
    }

    func setupVCs() {
        viewControllers = [
            createNavController(for: LoadingViewController(), title: NSLocalizedString("Home", comment: ""), image: UIImage(systemName: "house")!),
            createNavController(for: LoadingViewController(), title: NSLocalizedString("Categories", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
            createNavController(for: ViewController(), title: NSLocalizedString("Feed", comment: ""), image: UIImage(systemName: "person")!),
            createNavController(for: LoadingViewController(), title: NSLocalizedString("Account", comment: ""), image: UIImage(systemName: "house")!),
            createNavController(for: LoadingViewController(), title: NSLocalizedString("Help", comment: ""), image: UIImage(systemName: "person")!)
        ]
    }
}
