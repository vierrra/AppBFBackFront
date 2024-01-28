//
//  LoginViewController.swift
//  AppBFBackFront
//
//  Created by Renato Vieira on 24/01/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginScreen = LoginScreen()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginScreen.delegate = self
        loginScreen.configureTextFieldsDelegate(delegate: self)
        view = loginScreen
    }
}

extension LoginViewController: LoginScreenProtocol {
    
    func tappedRecoveryPassword() {
        print("Recuperar senha")
    }
    
    func tappedLogin() {
        print("Clicou para logar")
    }
    
    func tappedLoginMetamask() {
        print("Clicou para logar com Metadask")
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return false
    }
}

