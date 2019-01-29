//
//  SignUpConfigurator.swift
//  LeroyMerlin
//
//  Created by Maxim Spiridonov on 29/01/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import Foundation
class SignUpConfigurator: SignUpConfiguratorProtocol {
    
    func configure(with viewController: SignUpViewController) {
        let presenter = SignUpPresenter(view: viewController)
        let router = SignUpRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.router = router
        
    }
}
