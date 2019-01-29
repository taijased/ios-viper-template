//
//  SignInPresenter.swift
//  LeroyMerlin
//
//  Created Maxim Spiridonov on 29/01/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.

import Foundation
import UIKit

class SignInPresenter: SignInPresenterProtocol {
    
    weak var view: SignInViewProtocol!
    var interactor: SignInInteractorProtocol!
    var router: SignInRouterProtocol!
    
    required init(view: SignInViewProtocol) {
        self.view = view
    }
    // MARK: - SignInPresenterProtocol methods
    
    func configureView() {
        
    }
    func signUpButtonClicked() {
        router.showSignUpScene()
    }
}

