//
//  AppDelegate.swift
//  Colors_IN_MVVM-C_App
//
//  Created by AbeerSharaf on 11/16/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initialViewController = storyboard.instantiateViewController(withIdentifier: "MainVC")
        self.window?.rootViewController = initialViewController

        return true
    }
}
//MARK:- Public Methods
//func switchToMainState() {
//    let mainView = MainView.create()
//    let navigationController = UINavigationController(rootViewController: todoListVC)
//    self.window?.rootViewController = navigationController
//}

//MARK:- Extension
extension AppDelegate {
    static func shared() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
}
