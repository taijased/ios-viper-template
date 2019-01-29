//
//  SignUpRouter.swift
//  LeroyMerlin
//
//  Created Maxim Spiridonov on 29/01/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.

import Foundation
import UIKit

class SignUpRouter: SignUpRouterProtocol {
    
    weak var viewController: SignUpViewController!
    
    init(viewController: SignUpViewController) {
        self.viewController = viewController
    }
    
    func showSignInScene() {
        viewController.dismiss(animated: true, completion: nil)
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // prepare here some data for destination viewController
    }
}
