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
        tabBar.backgroundColor = .white
    }
    
    func setupTabBarViewController() {
        let first = LabraryTabBar()
        let firstTabItem = UITabBarItem(title: "Labrary", image: UIImage(systemName: "photo.on.rectangle.fill"), selectedImage: UIImage(systemName: "photo.on.rectangle.fill"))
        first.tabBarItem = firstTabItem
        
        let second = ForYouTabBar()
        let secondTabItem = UITabBarItem(title: "For You", image: UIImage(systemName: "person.crop.rectangle.stack.fill"), selectedImage: UIImage(systemName: "person.crop.rectangle.stack.fill"))
        second.tabBarItem = secondTabItem
        
        let third = AlbumsTabBar()
        let thirdTabItem = UITabBarItem(title: "Albums", image: UIImage(systemName: "rectangle.stack.fill"), selectedImage: UIImage(systemName: "rectangle.stack.fill"))
        third.tabBarItem = thirdTabItem
        
        let four = SearchTabBar()
        let fourTabItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
        four.tabBarItem = fourTabItem
        
        let controllers = [first, second, third, four]
        self.setViewControllers(controllers, animated: true)
        
    }
}
