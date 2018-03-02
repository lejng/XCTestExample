//
//  BaseElement.swift
//  RecipesUITests
//
//  Created by Admin on 26.02.18.
//  Copyright © 2018 Apple, Inc. All rights reserved.
//

import Foundation
import XCTest

class BaseElement {
    let name: String
    let element: XCUIElement
    
    init(element: XCUIElement, name: String) {
        self.name = name
        self.element = element
    }
    
    public func click(){
        print("\(getType()) \(name) :: Clicking...")
        element.tap()
    }
    
    public func doubleClick(){
        print("\(getType()) \(name) :: Double clicking...")
        element.doubleTap()
    }
    
    public func getText() -> String{
        print("\(getType()) \(name) :: Getting text...")
        return element.label
    }
    
    public func getType() -> String{
        return "BaseElement";
    }
}
