//
//  LoginViewController.swift
//  FoodDeliveryApp
//
//  Created by Ivan Rybkin on 07.07.2024.
//

import UIKit

enum LoginViewState {
    case initial
    case signIn
    case signUp
}

protocol LoginViewInput: AnyObject {
    func onSignInTapped()
    func onSignUpTapped()
    func onFacebookTapped()
    func onForgotTapped()
    func onBackPressed()
}

class LoginViewController: UIViewController {

    // MARK: - Properties

    private var state: LoginViewState = .initial
    weak var viewOutput: (LoginViewOutput)?
   
    // MARK: -  Views

    private lazy var bottomView = FDBottomView()
    private lazy var textField = FDTextField()
    private lazy var logoImage = UIImageView()
    private lazy var signInButton = FDButton()
    private lazy var signUpButton = FDButton()


    // MARK: - Initializers

    init(viewOutput: LoginViewOutput, state: LoginViewState) {
        self.viewOutput = viewOutput
        self.state = state
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = AppColors.background
        setupLayout()


    }

    func facebookPress() {
        print("FACEBOOK")
    }

    func googlePress() {
        print("GOOGLE")
    }
}

private extension LoginViewController {

    func setupLayout() {
        switch state {
        case .initial:
            setupLogoImage()
            setupSigInButton()
            setupSigUpButton()
            setupBottomView()
        case .signIn:
            setupBottomView()
            setupTextField()
        case .signUp:
            setupBottomView()
            setupTextField()
        }
    }

    func setupBottomView() {
        view.addSubview(bottomView)
        bottomView.translatesAutoresizingMaskIntoConstraints = false

        bottomView.button2Action = facebookPress
        bottomView.button1Action = googlePress

        NSLayoutConstraint.activate([
            bottomView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }

    func setupTextField() {
        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            textField.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            textField.heightAnchor.constraint(equalToConstant: 50),
            textField.widthAnchor.constraint(equalToConstant: 354)
        ])
    }

    func setupLogoImage() {
        view.addSubview(logoImage)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.image = UIImage(resource: .appstore)

        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 109),
            logoImage.leftAnchor.constraint (equalTo: self.view.leftAnchor, constant: 57),
            logoImage.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -57),
            logoImage.heightAnchor.constraint(equalToConstant: 300)
        ])
    }

    func setupSigInButton() {
        view.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.setTitle("Sign In")
        signInButton.scheme = .grey

        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 60),
            signInButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 30),
            signInButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -30),
            signInButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    func setupSigUpButton() {
        view.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.setTitle("Sign Up")
        signUpButton.scheme = .orange

        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 20),
            signUpButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 30),
            signUpButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -30),
            signUpButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

extension LoginViewController: LoginViewInput {
    func onForgotTapped() {

    }
    
    func onBackPressed() {

    }
    
    func onSignInTapped() {

    }
    
    func onSignUpTapped() {

    }
    
    func onFacebookTapped() {

    }
    
    func onForgotRapped() {

    }
    

}


#Preview("LoginVC") {
    LoginViewController(viewOutput: LoginPresenter(), state: .initial)
}
