//
//  SignInConfigurator.swift
//  LeroyMerlin
//
//  Created by Maxim Spiridonov on 29/01/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import Foundation
class SignInConfigurator: SignInConfiguratorProtocol {
    
    func configure(with viewController: SignInViewController) {
        let presenter = SignInPresenter(view: viewController)
        let router = SignInRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.router = router

    }
}
