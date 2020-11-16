//
//  Coordinator.swift
//  Colors_IN_MVVM-C_App
//
//  Created by AbeerSharaf on 11/16/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import Foundation
import UIKit

class Coordinator: NSObject {
    
    let rootNavigationController: UINavigationController
    
    var onEnd: (() -> Void)?
    
    private(set) var coordinators = [Coordinator]()
    
    init(rootNavigationController: UINavigationController) {
        self.rootNavigationController = rootNavigationController
        self.coordinators = []
    }
    
    func add(childCoordinator: Coordinator) {
        coordinators.append(childCoordinator)
    }
    
    @discardableResult
    func remove(childCoordinator: Coordinator) -> Coordinator? {
        if let index = coordinators.firstIndex(of: childCoordinator) {
            return coordinators.remove(at: index)
        } else {
            return nil
        }
    }
    
    func start() {
        // To be overriden
    }
}
