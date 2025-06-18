//
//  WebViewViewControllerDelegate.swift
//  ImageFeed
//
//  Created by Andrew Leonov on 17.06.2025.
//

import Foundation

protocol WebViewViewControllerDelegate: AnyObject {
    func webViewViewController(_ vc: WebViewViewController, didAuthenticateWithCode code: String)
    func webViewViewControllerDidCancel(_ vc: WebViewViewController)
}
