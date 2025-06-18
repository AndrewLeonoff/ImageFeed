//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by Andrew Leonov on 16.06.2025.
//

import Foundation

final class OAuth2TokenStorage {
    private enum Keys: String {
        case accessToken
    }
    
    private let storage = UserDefaults.standard
    
    var token: String? {
        get {
            storage.string(forKey: Keys.accessToken.rawValue)
        }
        set {
            storage.set(newValue, forKey: Keys.accessToken.rawValue)
        }
    }
}
