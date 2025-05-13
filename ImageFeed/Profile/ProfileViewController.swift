//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Andrew Leonov on 05.05.2025.
//

import UIKit

final class ProfileViewController: UIViewController {
    private lazy var avatarImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "avatar"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Екатерина Новикова"
        label.font = .systemFont(ofSize: 23, weight: .semibold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var loginNameLabel: UILabel = {
        let label = UILabel()
        label.text = "@ekaterina_nov"
        label.font = .systemFont(ofSize: 13, weight: .regular)
        label.textColor = UIColor(red: 174/255, green: 175/255, blue: 180/255, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello, World!"
        label.font = .systemFont(ofSize: 13, weight: .regular)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var logoutButton: UIButton = {
        let button = UIButton.systemButton(
            with: UIImage(named: "logout_button")!,
            target: self,
            action: #selector(Self.didTapLogoutButton)
        )
        button.tintColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        setupAvatarImageView()
        setupNameLabel()
        setupLoginNameLabel()
        setupDescriptionLabel()
        setupLogoutButton()
    }
    
    private func setupAvatarImageView() {
        view.addSubview(avatarImageView)
        NSLayoutConstraint.activate(
            [
                avatarImageView.widthAnchor.constraint(equalToConstant: 70),
                avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
                avatarImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
                avatarImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16)
            ]
        )
    }
    
    private func setupNameLabel() {
        view.addSubview(nameLabel)
        NSLayoutConstraint.activate(
            [
                nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 8),
                nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
                nameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 16)
            ]
        )
    }
    
    private func setupLoginNameLabel() {
        view.addSubview(loginNameLabel)
        NSLayoutConstraint.activate(
            [
                loginNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
                loginNameLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
                loginNameLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor)
            ]
        )
    }
    
    private func setupDescriptionLabel() {
        view.addSubview(descriptionLabel)
        NSLayoutConstraint.activate(
            [
                descriptionLabel.topAnchor.constraint(equalTo: loginNameLabel.bottomAnchor, constant: 8),
                descriptionLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
                descriptionLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor)
            ]
        )
    }
    
    private func setupLogoutButton() {
        view.addSubview(logoutButton)
        NSLayoutConstraint.activate(
            [
                logoutButton.widthAnchor.constraint(equalToConstant: 44),
                logoutButton.heightAnchor.constraint(equalToConstant: 44),
                logoutButton.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
                logoutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
            ]
        )
    }
    
    @objc private func didTapLogoutButton() { }
}
