//
//  OrderCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Ivan Rybkin on 04.07.2024.
//

import UIKit

class OrderCoordinator: Coordinator {

    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .yellow
        navigationController?.pushViewController(vc, animated: true)
    }

    override func finish() {
        print("AppCoordinator finish")
    }


}
