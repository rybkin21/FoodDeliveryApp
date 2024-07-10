//
//  LoginViewPresenter.swift
//  FoodDeliveryApp
//
//  Created by Ivan Rybkin on 09.07.2024.
//

import Foundation

protocol LoginViewOutput: AnyObject {
    func login()
    func registrationStart()
    func goToFacebookLogin()
    func goToGoogleLogin()
    func goToSignIn()
    func goToSignUp()
    func goToForgoyPass()
    func back()
}

class LoginPresenter {

    private var coordinator: AppCoordinator?
    weak var viewInput: LoginViewInput?

    init(coordinator: AppCoordinator? = nil, viewInput: LoginViewInput? = nil) {
        self.coordinator = coordinator
        self.viewInput = viewInput
    }
}

extension LoginPresenter: LoginViewOutput {
   
    func login() {

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
