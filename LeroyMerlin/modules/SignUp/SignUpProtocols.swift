//
//  SignUpProtocols.swift
//  LeroyMerlin
//
//  Created Maxim Spiridonov on 29/01/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.


import Foundation
import UIKit

protocol SignUpViewProtocol: class {
}

protocol SignUpPresenterProtocol: class {
    var router: SignUpRouterProtocol! { set get }
    func configureView()
    func backButtonClicked()
}

protocol SignUpInteractorProtocol: class {
    
}

protocol SignUpRouterProtocol: class {
    func showSignInScene()
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}

protocol SignUpConfiguratorProtocol: class {
    func configure(with viewController: SignUpViewController)
}

