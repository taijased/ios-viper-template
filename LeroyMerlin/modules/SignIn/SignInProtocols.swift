//
//  SignInProtocols.swift
//  LeroyMerlin
//
//  Created Maxim Spiridonov on 29/01/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.


import Foundation
import UIKit

protocol SignInViewProtocol: class {
}

protocol SignInPresenterProtocol: class {
    var router: SignInRouterProtocol! { set get }
    func configureView()
    func signUpButtonClicked()
}

protocol SignInInteractorProtocol: class {
   
}

protocol SignInRouterProtocol: class {
    func showSignUpScene()
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}

protocol SignInConfiguratorProtocol: class {
    func configure(with viewController: SignInViewController)
}

