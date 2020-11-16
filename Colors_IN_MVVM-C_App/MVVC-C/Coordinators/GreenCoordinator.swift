//
//  GreenCoordinator.swift
//  Colors_IN_MVVM-C_App
//
//  Created by AbeerSharaf on 11/16/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import Foundation
final class GreenCoordinator: Coordinator {
    
    override func start() {
        configureGreenScreenFlow()
    }
    
    private func configureGreenScreenFlow() {
        let greenVM = GreenVM()
        let greenVC = GreenVC(viewModel: greenVM)
        
        greenVM.didPressNavigationBarBackButton = {
            self.onEnd?()
            self.rootNavigationController.popViewController(animated: true)
        }
        
        rootNavigationController.pushViewController(greenVC, animated: true)
    }
}
