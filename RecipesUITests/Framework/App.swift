//
//  App.swift
//  RecipesUITests
//
//  Created by Admin on 27.02.18.
//  Copyright © 2018 Apple, Inc. All rights reserved.
//

import Foundation
import XCTest

class App {
    let app: XCUIApplication
    static let instance = App()
    
    private init() {
        app = XCUIApplication()
        app.launch()
    }
}
