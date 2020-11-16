//
//  MainVC.swift
//  Colors_IN_MVVM-C_App
//
//  Created by AbeerSharaf on 11/16/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    var mainView: MainView {
        return view as! MainView
    }
    
    let viewModel: MainVMProtocol
    
    init(viewModel: MainVMProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = Bundle.main.loadNibNamed("MainView", owner: nil, options: nil)!.first as? UIView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.redButton.addTarget(self, action: #selector(redButtonAction), for: .touchUpInside)
        mainView.greenButton.addTarget(self, action: #selector(greenButtonAction), for: .touchUpInside)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @objc private func redButtonAction() {
        viewModel.didPressRedButton?()
    }
    
    @objc private func greenButtonAction() {
        viewModel.didPressGreenButton?()
    }
}
