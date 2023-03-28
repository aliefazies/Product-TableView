//
//  TabBar.swift
//  Week2-Day1-Product-TableView
//
//  Created by Alief Ahmad Azies on 28/03/23.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCs()
    }
    
    fileprivate func createNavController(for rootVc: UIViewController, title: String, image: UIImage)-> UIViewController {
        let navController = UINavigationController(rootViewController: rootVc)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootVc.navigationItem.title = title
        return navController
    }
    
    func setupVCs() {
        viewControllers  = [
            createNavController(for: HomeViewController(), title: "Home", image: UIImage(systemName: "house")!),
            createNavController(for: ProfileViewController(), title: "Profile", image: UIImage(systemName: "person")!)
        ]
    }

}
