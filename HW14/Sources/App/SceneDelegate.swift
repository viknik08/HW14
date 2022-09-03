//
//  SceneDelegate.swift
//  HW14
//
//  Created by Виктор Басиев on 01.09.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let viewController = TabBarViewController()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }
}

