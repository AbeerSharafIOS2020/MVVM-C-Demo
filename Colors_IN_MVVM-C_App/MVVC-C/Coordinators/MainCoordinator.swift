//
//  MainCoordinator.swift
//  Colors_IN_MVVM-C_App
//
//  Created by AbeerSharaf on 11/16/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import Foundation
final class MainCoordinator: Coordinator {
    
    override func start() {
        configureMainFlow()
    }
    
    private func configureMainFlow() {
        let mainVM = MainVM()
        let mainVC = MainVC(viewModel: mainVM)
        
        mainVM.didPressRedButton = {
            self.redButtonFlow()
        }
        
        mainVM.didPressGreenButton = {
            self.greenButtonFlow()
        }
        
        rootNavigationController.setViewControllers([mainVC], animated: false)
    }
    
    func redButtonFlow() {
        
            let redCoordinator = RedCoordinator(rootNavigationController: rootNavigationController)
            redCoordinator.start()
            
            add(childCoordinator: redCoordinator)
            
            redCoordinator.onEnd = {
                self.remove(childCoordinator: redCoordinator)
            }
        }
    
    
        func greenButtonFlow() {
            let greenCoordinator = GreenCoordinator(rootNavigationController: rootNavigationController)
            greenCoordinator.start()
            
            add(childCoordinator: greenCoordinator)
            
            greenCoordinator.onEnd = {
                self.remove(childCoordinator: greenCoordinator)
            }
        }

}
