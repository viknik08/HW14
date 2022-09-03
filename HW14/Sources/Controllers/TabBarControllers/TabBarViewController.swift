//
//  TabBarViewController.swift
//  HW14
//
//  Created by Виктор Басиев on 02.09.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
        setupTabBarViewController()
    }
    
    func setupTabBarController() {
        tabBar.tintColor = .systemBlue
        tabBar.backgroundColor = .systemGray6
    }
    
    func setupTabBarViewController() {
        let firstNavigationVC = UINavigationController(rootViewController: LabraryTabBar())
        let firstTabItem = UITabBarItem(title: "Labrary", image: UIImage(systemName: "photo.on.rectangle.fill"), selectedImage: UIImage(systemName: "photo.on.rectangle.fill"))
        firstNavigationVC.tabBarItem = firstTabItem
        
        let secondNavigationVC = UINavigationController(rootViewController: ForYouTabBar())
        let secondTabItem = UITabBarItem(title: "For You", image: UIImage(systemName: "person.crop.rectangle.stack.fill"), selectedImage: UIImage(systemName: "person.crop.rectangle.stack.fill"))
        secondNavigationVC.tabBarItem = secondTabItem
        
        let thirdNavigationVC = UINavigationController(rootViewController: AlbumsTabBar())
        let thirdTabItem = UITabBarItem(title: "Albums", image: UIImage(systemName: "rectangle.stack.fill"), selectedImage: UIImage(systemName: "rectangle.stack.fill"))
        thirdNavigationVC.tabBarItem = thirdTabItem
        
        let fourNavigationVC = UINavigationController(rootViewController: SearchTabBar())
        let fourTabItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
        fourNavigationVC.tabBarItem = fourTabItem
        
        let controllers = [firstNavigationVC, secondNavigationVC, thirdNavigationVC, fourNavigationVC]
        self.setViewControllers(controllers, animated: true)
    }
}
