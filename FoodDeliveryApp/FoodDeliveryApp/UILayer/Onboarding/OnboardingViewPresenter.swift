//
//  OnboardingViewPresenter.swift
//  FoodDeliveryApp
//
//  Created by Ivan Rybkin on 04.07.2024.
//

import Foundation

protocol OnboardingViewOutput: AnyObject {
    func onboardingFinish()
}

class OnboardingViewPresenter: OnboardingViewOutput {
    
// MARK: - Properties

    weak var coordinator: OnboardingCoordinator!

    init(coordinator: OnboardingCoordinator!) {
        self.coordinator = coordinator
    }

    func onboardingFinish() {
        coordinator.finish()
    }
}

