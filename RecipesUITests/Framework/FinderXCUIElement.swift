//
//  FinderXCUIElement.swift
//  RecipesUITests
//
//  Created by Admin on 26.02.18.
//  Copyright © 2018 Apple, Inc. All rights reserved.
//

import Foundation
import XCTest

class FinderXCUIElement {
    
    static func findElementByText(elements: XCUIElementQuery, text: String) -> XCUIElement? {
        for index in 0 ... elements.count - 1 {
            if(elements.element(boundBy: index).label == text){
                return elements.element(boundBy: index)
            }
        }
        return nil
    }
    
}
