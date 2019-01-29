//
//  SignUpViewController.swift
//  LeroyMerlin
//
//  Created Maxim Spiridonov on 29/01/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.


import UIKit

class SignUpViewController: UIViewController, SignUpViewProtocol, UITextFieldDelegate {
    
    
    var presenter: SignUpPresenterProtocol!
    var configurator: SignUpConfiguratorProtocol = SignUpConfigurator()
    
    let selfToSignUpSegueName = "SignUpToSignUpSegue"
    
    // MARK: - Lifecycle methods
    
    @IBAction func backButtonClicked(_ sender: Any) {
        presenter.backButtonClicked()
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
