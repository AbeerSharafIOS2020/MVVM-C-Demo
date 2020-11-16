//
//  RedVM.swift
//  Colors_IN_MVVM-C_App
//
//  Created by AbeerSharaf on 11/16/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import Foundation

class RedVM: RedVMProtocol {
    var didPressRedButton: (() -> ())?    
    var didPressNavigationBarBackButton: (() -> ())?
}
