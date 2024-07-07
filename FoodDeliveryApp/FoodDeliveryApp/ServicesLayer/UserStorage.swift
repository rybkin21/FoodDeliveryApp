//
//  UserStorage.swift
//  FoodDeliveryApp
//
//  Created by Ivan Rybkin on 07.07.2024.
//

import Foundation

class UserStorage {

    static let shared = UserStorage()

    var passedOnboarding: Bool {
        get { UserDefaults.standard.bool(forKey: "passedOnboarding") }
        set { UserDefaults.standard.setValue(newValue, forKey: "passedOnboarding") }
    }
}
