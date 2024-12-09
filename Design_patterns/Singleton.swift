//
//  Singleton.swift
//  Design_Patterns
//
//  Created by Dinesh Sharma on 09/12/24.
//

import Foundation

class Singleton {
    
    static let shared = Singleton()
    private init() {}
    
    
    func doSomething() {
        print("Singleton instance is doing something!")
    }
}

class SingletonExample {
    func testSingleton() {
        let instance = Singleton.shared
        instance.doSomething()
    }
}
