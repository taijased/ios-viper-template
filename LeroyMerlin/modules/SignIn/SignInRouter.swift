//
//  SignInRouter.swift
//  LeroyMerlin
//
//  Created Maxim Spiridonov on 29/01/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.

import Foundation
import UIKit

class SignInRouter: SignInRouterProtocol {
    
    weak var viewController: SignInViewController!
    
    init(viewController: SignInViewController) {
        self.viewController = viewController
    }
    
    func showSignUpScene() {
        viewController.performSegue(withIdentifier: viewController.selfToSignUpSegueName, sender: nil)
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // prepare here some data for destination viewController
    }
}
