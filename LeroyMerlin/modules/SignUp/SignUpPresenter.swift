//
//  SignUpPresenter.swift
//  LeroyMerlin
//
//  Created Maxim Spiridonov on 29/01/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.

import Foundation
import UIKit

class SignUpPresenter: SignUpPresenterProtocol {
    
    weak var view: SignUpViewProtocol!
    var interactor: SignUpInteractorProtocol!
    var router: SignUpRouterProtocol!
    
    required init(view: SignUpViewProtocol) {
        self.view = view
    }
    // MARK: - SignUpPresenterProtocol methods
    
    func configureView() {
        
    }
    func backButtonClicked() {
        router.showSignInScene()
    }
}

