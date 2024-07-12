//
//  LoginViewPresenter.swift
//  FoodDeliveryApp
//
//  Created by Ivan Rybkin on 09.07.2024.
//

import Foundation

protocol LoginViewOutput: AnyObject {
    func loginStart(login: String, password: String)
    func registrationStart()
    func goToFacebookLogin()
    func goToGoogleLogin()
    func goToSignIn()
    func goToSignUp()
    func goToForgoyPass()
    func back()
}

class LoginPresenter {

    private var coordinator: LoginCoordinator?
    weak var viewInput: LoginViewInput?

    init(coordinator: LoginCoordinator? = nil, viewInput: LoginViewInput? = nil) {
        self.coordinator = coordinator
        self.viewInput = viewInput
    }
}
extension LoginPresenter {
    
    private func goToMainScreen() {
        coordinator?.finish()
    }
}

extension LoginPresenter: LoginViewOutput {
    func loginStart(login: String, password: String) {
        viewInput?.startLoader()
        if login == "Test@mail.ru" && password == "Test123" {
            DispatchQueue.global().asyncAfter(deadline: .now() + 2.0) {
                DispatchQueue.main.async {
                    self.viewInput?.stopLoader()
                    self.goToMainScreen()
                }
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                print("wrong email or password")
                self.viewInput?.stopLoader()
            }
        }

    }
    
   
    func loginStart() {

    }
    
    func registrationStart() {

    }
    
    func goToFacebookLogin() {

    }
    
    func goToGoogleLogin() {

    }
    
    func goToSignIn() {
        coordinator?.showSignInScene()
    }
    
    func goToSignUp() {
        coordinator?.showSignUpScene()
    }

    func goToForgoyPass() {

    }
    
    func back() {

    }

}
