//
//  BasePage.swift
//  RecipesUITests
//
//  Created by Admin on 26.02.18.
//  Copyright © 2018 Apple, Inc. All rights reserved.
//
import XCTest

class BasePage {
    let mainLocator: XCUIElement
    let name: String
    let app = BaseTest.app
    
    init(mainLocator: XCUIElement, name: String) {
        self.mainLocator = mainLocator
        self.name = name
        XCTAssert(waitForPagePresent(timeout: Time.thirtySecond),"\(name) page does not appear")
    }
    
    func waitForPagePresent(timeout: Time) -> Bool {
        let predicate = NSPredicate(format: "exists == true")
        let expectation = XCTNSPredicateExpectation(predicate: predicate, object: mainLocator)
        let result = XCTWaiter().wait(for: [expectation], timeout: timeout.rawValue)
        return result == .completed
    }
}
