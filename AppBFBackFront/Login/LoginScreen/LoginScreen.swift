//
//  LoginScreen.swift
//  AppBFBackFront
//
//  Created by Renato Vieira on 24/01/24.
//

import UIKit

protocol LoginScreenProtocol: AnyObject {
    func tappedRecoveryPassword()
    func tappedLogin()
    func tappedLoginMetamask()
}

class LoginScreen: UIView {
    
    weak var delegate: (LoginScreenProtocol)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var imageScreen: UIImageView = {
        let image = UIImageView()
        
        image.image =  UIImage(named: "BGLogin")
        
        return image
    }()
    
    lazy var logoImage: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(named: "Logo")
        
        return image
    }()
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        
        label.text = "BF NFT"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        
        label.text = "O marktplace de NFTs da Backfront Academy"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        
        textField.borderStyle = .roundedRect
        textField.attributedPlaceholder = NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)])
        textField.textColor = .white
        textField.layer.borderColor = UIColor.white.cgColor
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1
        textField.backgroundColor = .darkGray
        textField.keyboardType = .emailAddress
        
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        
        textField.borderStyle = .roundedRect
        textField.attributedPlaceholder = NSAttributedString(string: "Senha", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)])
        textField.textColor = .white
        textField.layer.borderColor = UIColor.white.cgColor
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1
        textField.backgroundColor = .darkGray
        textField.keyboardType = .default
        
        return textField
    }()
    
    lazy var recoveryPasswordButton: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = .clear
        button.setTitle("Recuperar senha?", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(UIColor(red: 231/255, green: 48/255, blue: 214/255, alpha: 1.0), for: .normal)
        button.addTarget(self, action: #selector(tappedRecoveryPassword), for: .touchUpInside)
        
        return button
    }()
    
    lazy var loginImageView: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(named: "Image")
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 12
        
        return image
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
    
        button.setTitle("Entrar", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(tappedLogin), for: .touchUpInside)
        
        return button
    }()
    
    lazy var separatorView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .white
        
        return view
    }()
    
    lazy var metaMaskButton: UIButton = {
        let button = UIButton()
    
        button.backgroundColor = .clear
        button.setTitle("Entrar com a Metamask", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.borderColor = UIColor(red: 231/255, green: 48/255, blue: 214/255, alpha: 1.0).cgColor
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.addTarget(self, action: #selector(tappedLoginMetamask), for: .touchUpInside)
        
        return button
    }()
    
    lazy var logoMetamaskImageView: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(named: "ImageDog")
        
        return image
    }()
    
    @objc func tappedRecoveryPassword(_ sender: UIButton) {
        delegate?.tappedRecoveryPassword()
    }
    
    @objc func tappedLogin(_ sender: UIButton) {
        delegate?.tappedLogin()
    }
    
    @objc func tappedLoginMetamask(_ sender: UIButton) {
        delegate?.tappedLoginMetamask()
    }
    
    private func configureElements() {
        configureImageScreen()
        configureLogoImage()
        configureLoginLabel()
        configureDescriptionLabel()
        configureTextFields()
        configureRecoveryPasswordButton()
        configureLoginImage()
        configureLoginButton()
        configureSeparatorView()
        configureMetaMaskButton()
        configureLogoMetamaskImageView()
    }
    
    private func configureImageScreen() {
        addSubview(imageScreen)
        
        imageScreen.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
    }
    
    private func configureLogoImage() {
        addSubview(logoImage)
        
        logoImage.anchor(top: safeAreaLayoutGuide.topAnchor, padding: UIEdgeInsets(top: 40, left: 0, bottom: 0, right: 0), size: CGSize(width: 108, height: 108))
        logoImage.xAnchor(xAnchor: centerXAnchor)
    }
    
    private func configureLoginLabel() {
        addSubview(loginLabel)
        
        loginLabel.anchor(top: logoImage.bottomAnchor, padding: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0))
        loginLabel.xAnchor(xAnchor: centerXAnchor)
    }
    
    private func configureDescriptionLabel() {
        addSubview(descriptionLabel)
        
        descriptionLabel.anchor(top: loginLabel.bottomAnchor, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0))
        descriptionLabel.xAnchor(xAnchor: centerXAnchor)
    }
    
    private func configureTextFields() {
        addSubview(emailTextField)
        addSubview(passwordTextField)
        
        emailTextField.anchor(top: descriptionLabel.bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, padding: UIEdgeInsets(top: 30, left: 20, bottom: 0, right: 20), size: CGSize(width: 0, height: 40))
        
        passwordTextField.anchor(top: emailTextField.bottomAnchor, leading: emailTextField.leadingAnchor, trailing: emailTextField.trailingAnchor, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: 40))
    }
    
    private func configureRecoveryPasswordButton() {
        addSubview(recoveryPasswordButton)
        
        recoveryPasswordButton.anchor(top: passwordTextField.bottomAnchor, trailing: emailTextField.trailingAnchor, padding: UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0))
    }
    
    private func configureLoginImage() {
        addSubview(loginImageView)
        
        loginImageView.anchor(top: recoveryPasswordButton.bottomAnchor, leading: emailTextField.leadingAnchor, trailing: emailTextField.trailingAnchor, padding: UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: 40))
    }
    
    private func configureLoginButton() {
        addSubview(loginButton)
        
        loginButton.anchor(top: recoveryPasswordButton.bottomAnchor, leading: emailTextField.leadingAnchor, trailing: emailTextField.trailingAnchor, padding: UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: 40))
    }
    
    private func configureSeparatorView() {
        addSubview(separatorView)
        
        separatorView.anchor(top: loginButton.bottomAnchor, padding: UIEdgeInsets(top: 60, left: 0, bottom: 0, right: 0), size: CGSize(width: 250, height: 1))
        separatorView.xAnchor(xAnchor: centerXAnchor)
    }
    
    private func configureMetaMaskButton() {
        addSubview(metaMaskButton)
        
        metaMaskButton.anchor(top: separatorView.bottomAnchor, leading: emailTextField.leadingAnchor, trailing: emailTextField.trailingAnchor, padding: UIEdgeInsets(top: 60, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: 40))
    }
    
    private func configureLogoMetamaskImageView() {
        addSubview(logoMetamaskImageView)
        
        logoMetamaskImageView.anchor(top: metaMaskButton.topAnchor, leading: metaMaskButton.leadingAnchor, bottom: metaMaskButton.bottomAnchor, padding: UIEdgeInsets(top: 10, left: 50, bottom: 10, right: 0), size: CGSize(width: 20, height: 20))
    }
}
