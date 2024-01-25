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
        
        view = loginScreen
    }
}

