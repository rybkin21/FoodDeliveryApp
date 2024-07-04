//
//  ProfileCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Ivan Rybkin on 04.07.2024.
//

import UIKit

class ProfileCoordinator: Coordinator {

    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .systemCyan
        navigationController?.pushViewController(vc, animated: true)
    }

    override func finish() {
        print("AppCoordinator finish")
    }


}
