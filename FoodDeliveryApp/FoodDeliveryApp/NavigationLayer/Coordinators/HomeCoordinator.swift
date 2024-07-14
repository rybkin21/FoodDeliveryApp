//
//  HomeCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Ivan Rybkin on 04.07.2024.
//

import UIKit

class HomeCoordinator: Coordinator {

    private let factory = SceneFactory.self

    override func start() {
        showHomeScene()
    }

    override func finish() {
        print("HomeCoordinator finish")
    }


}

// MARK: - Navigation

extension HomeCoordinator {

    func showHomeScene() {
        guard let navigationController = navigationController else { return }
        let vc = factory.makeHomeScene(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
}
