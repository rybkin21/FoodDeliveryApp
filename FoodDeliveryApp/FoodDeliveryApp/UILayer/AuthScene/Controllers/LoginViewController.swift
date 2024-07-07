//
//  LoginViewController.swift
//  FoodDeliveryApp
//
//  Created by Ivan Rybkin on 07.07.2024.
//

import UIKit

class LoginViewController: UIViewController {

    private let bottomView = BottomView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
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
        setupBottomView()
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

}

//#Preview("LoginVC") {
//    LoginViewController()
//}
