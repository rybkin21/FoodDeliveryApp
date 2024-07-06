//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Ivan Rybkin on 04.07.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {

    override func start() {
        showOnboarding()
    }

    override func finish() {
        print("AppCoordinator finish")
    }


}

private extension OnboardingCoordinator {
    func showOnboarding() {
        var pages = [OnboardingPartViewController]()

        let firstVC = OnboardingPartViewController()
        firstVC.imageToShow = UIImage(resource: .chickenLeg)
        firstVC.titleText = "Delicious Food"
        firstVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        firstVC.buttonText = "Next"

        let secondVC = OnboardingPartViewController()
        secondVC.imageToShow = UIImage(resource: .shipped)
        secondVC.titleText = "Fast Shipping"
        secondVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla."
        secondVC.buttonText = "Next"

        let thirdVC = OnboardingPartViewController()
        thirdVC.imageToShow = UIImage(resource: .medal)
        thirdVC.titleText = "Certificate Food"
        thirdVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies mauris a id."
        thirdVC.buttonText = "Next"

        let fourthVC = OnboardingPartViewController()
        fourthVC.imageToShow = UIImage(resource: .creditCard)
        fourthVC.titleText = "Payment Online"
        fourthVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui ultricies sit massa."
        fourthVC.buttonText = "Let's Go!"

        pages.append(firstVC)
        pages.append(secondVC)
        pages.append(thirdVC)
        pages.append(fourthVC)

        let presenter = OnboardingViewPresenter(coordinator: self)
        let viewController = OnboardingViewController(pages: pages, viewOutput: presenter)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
