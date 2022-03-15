//
//  SingletonAndDesingletonizationTests.swift
//  SingletonAndDesingletonizationTests
//
//  Created by Jian Ma on 3/14/22.
//

import XCTest
import UIKit
@testable import SingletonAndDesingletonization

class SingletonAndDesingletonizationTests: XCTestCase {}
// main module

extension ApiClient: LoginApi{
    func login(completion: @escaping (LoggedInUser) -> Void) {}
}

extension ApiClient {
    func feed(completion: @escaping ([FeedItem]) -> Void) {}
}

//api module

class ApiClient {
    static let shared = ApiClient()
    
    func execute(_ request: URLRequest, completion: (Data) -> Void) {}
}

//login module

struct LoggedInUser {}

protocol LoginApi {
    func login(completion: @escaping (LoggedInUser) -> Void)
}

class LoginViewController: UIViewController {
    var login: (((LoggedInUser) -> Void) -> Void)?
    
    func didTapped() {
        login? { user in
            
        }
    }
}

// feed module

struct FeedItem {}

class FeedService {
    let loadFeed: (([FeedItem]) -> Void) -> Void
    
    init(loadFeed: @escaping (([FeedItem]) -> Void) -> Void) {
        self.loadFeed = loadFeed
    }
    
    private func load() {
        loadFeed { feedItems in
            
        }
    }
}
