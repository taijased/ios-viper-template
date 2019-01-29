//
//  SignInViewController.swift
//  LeroyMerlin
//
//  Created Maxim Spiridonov on 29/01/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.


import UIKit

class SignInViewController: UIViewController, SignInViewProtocol, UITextFieldDelegate {
    

    var presenter: SignInPresenterProtocol!
    var configurator: SignInConfiguratorProtocol = SignInConfigurator()
    
    let selfToSignUpSegueName = "SignInToSignUpSegue"
    
    // MARK: - Lifecycle methods
    
    @IBAction func clickSignUpButton(_ sender: Any) {
        presenter.signUpButtonClicked()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        presenter.configureView()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        presenter.router.prepare(for: segue, sender: sender)
    }
}
