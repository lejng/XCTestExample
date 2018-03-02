//
//  BaseTest.swift
//  RecipesUITests
//
//  Created by Admin on 27.02.18.
//  Copyright © 2018 Apple, Inc. All rights reserved.
//
import XCTest

class BaseTest: XCTestCase {
    public static let app: XCUIApplication = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        BaseTest.app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
        BaseTest.app.terminate()
    }
}
