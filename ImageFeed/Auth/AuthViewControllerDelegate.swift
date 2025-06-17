//
//  AuthViewControllerDelegate.swift
//  ImageFeed
//
//  Created by Andrew Leonov on 17.06.2025.
//

import Foundation

protocol AuthViewControllerDelegate: AnyObject {
    func didAuthenticate(_ vc: AuthViewController)
}
