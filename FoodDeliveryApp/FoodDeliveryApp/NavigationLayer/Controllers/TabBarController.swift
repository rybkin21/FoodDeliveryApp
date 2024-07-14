//
//  TabBarController.swift
//  FoodDeliveryApp
//
//  Created by Ivan Rybkin on 04.07.2024.
//

import UIKit

class TabBarController: UITabBarController {

    init(tabBarControllers: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)

        for tab in tabBarControllers {
            self.addChild(tab)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.backgroundColor = AppColors.grey
        tabBar.tintColor = AppColors.accentOrange
        tabBar.itemPositioning = .centered
        tabBar.itemWidth = 50.0
        tabBar.itemSpacing = 30.0

        UITabBarItem.appearance().titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -3)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.Roboto.regular.size(of: 12)], for: .normal)

    }
}
