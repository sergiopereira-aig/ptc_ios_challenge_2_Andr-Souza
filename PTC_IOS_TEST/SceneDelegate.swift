//
//  SceneDelegate.swift
//  PTC_IOS_TEST
//
//  Created by itsector on 29/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//
import UIKit
import UIKit

@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
                if let windowScene = scene as? UIWindowScene {
                    self.window = UIWindow(windowScene: windowScene)
                    let mainNavigationController = UINavigationController(rootViewController: ViewController())
                    self.window!.rootViewController = mainNavigationController
                    self.window!.makeKeyAndVisible()
                }
       }
}

