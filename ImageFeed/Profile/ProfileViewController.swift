//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Andrew Leonov on 05.05.2025.
//

import UIKit

final class ProfileViewController: UIViewController {
    @IBOutlet private weak var avatarImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var loginNameLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    @IBOutlet private weak var logoutButton: UIButton!
    
    @IBAction private func didTapLogoutButton() { }
}
