//
//  SingletonAndDesingletonizationUITests.swift
//  SingletonAndDesingletonizationUITests
//
//  Created by Jian Ma on 3/14/22.
//

import XCTest
import UIKit

class SingletonAndDesingletonizationUITests: XCTestCase {
    
    func test_main() {
        var computedValue: Int {
            return 3 + 4
        }
        var setValue = 3 + 4
        
        print("finished")
    }

}

class ApiClient {
    static let shared = ApiClient()
    
    func execute(_ request: URLRequest, completion: (Data) -> Void) {}
}

//login module

struct LoggedInUser {}

extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}

class LoginViewController: UIViewController {
    var login: (((LoggedInUser) -> Void) -> Void)?
    
    func didTapped() {
        login? { user in
            
        }
    }
}
