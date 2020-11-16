//
//  RedCoordinator.swift
//  Colors_IN_MVVM-C_App
//
//  Created by AbeerSharaf on 11/16/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import Foundation
final class RedCoordinator: Coordinator {
    
    override func start() {
        configureGreenScreenFlow()
    }
    
    private func configureGreenScreenFlow() {
        let redVM = RedVM()
        let redVC = RedVC(viewModel: redVM)
        
        redVM.didPressNavigationBarBackButton = {
            self.onEnd?()
            self.rootNavigationController.popViewController(animated: true)
        }
        
        rootNavigationController.pushViewController(redVC, animated: true)
    }
}
