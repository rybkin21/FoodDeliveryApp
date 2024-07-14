//
//  FDCollectionTitle.swift
//  FoodDeliveryApp
//
//  Created by Ivan Rybkin on 14.07.2024.
//

import UIKit

class FDCollectionTitle: UITextField {

    let title = UILabel()
    let viewAll = UIButton()

    init() {
        super.init(frame: .zero)
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupLayout() {
        configureView()
        configureTitle()
        configureViewAll()
    }
}

private extension FDCollectionTitle {
    func configureView() {
        self.backgroundColor = .clear

    }

    func configureTitle() {
        addSubview(title)

        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = .Roboto.bold.size(of: 18)
        title.text = "Title"

        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            title.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            title.heightAnchor.constraint(equalToConstant: 22)
        ])
    }

    func configureViewAll() {
        addSubview(viewAll)

        viewAll.translatesAutoresizingMaskIntoConstraints = false
        viewAll.titleLabel?.font = .Roboto.regular.size(of: 12)
        viewAll.setTitle("View All", for: .normal)
        viewAll.setTitleColor(AppColors.black, for: .normal


        )

        NSLayoutConstraint.activate([
            viewAll.centerYAnchor.constraint(equalTo: title.centerYAnchor, constant: 0),
            viewAll.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            viewAll.heightAnchor.constraint(equalToConstant: 22)
        ])
    }
}
