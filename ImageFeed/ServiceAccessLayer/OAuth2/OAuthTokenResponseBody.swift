//
//  OAuthTokenResponseBody.swift
//  ImageFeed
//
//  Created by Andrew Leonov on 16.06.2025.
//

import Foundation

struct OAuthTokenResponseBody: Decodable {
    let accessToken: String
    
    private enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
    }
}
