//
//  TabBarController.swift
//  Navigation
//
//  Created by Руфат Багирли on 20.02.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        tabBar.backgroundColor = .white
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
            createNavController(for: FeedViewController(), title: NSLocalizedString("Feed", comment: ""), image: UIImage(systemName: "house")!),
        
            createNavController(for: LogInViewController(), title: NSLocalizedString("Log In", comment: ""), image: UIImage(systemName: "person")!)
        ]
    }

/*    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        setupTabBar()
    }
    
    func setupTabBar() {
        
        let feedViewController = createNavController(vc: FeedViewController(), itemName: "Feed", ItemImage: "arrow.up.arrow.down")
        
        let profileViewController = createNavController(vc: ProfileViewController(), itemName: "Profile", ItemImage: "person.crop.rectangle")

        viewControllers = [feedViewController, profileViewController]
        
    }
    
    
    func createNavController(vc: UIViewController, itemName: String, ItemImage: String) -> UINavigationController {
        
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: ItemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0))  ,tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        
        return navController
    } */
}
