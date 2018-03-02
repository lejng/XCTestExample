//
//  Recipe.swift
//  RecipesUITests
//
//  Created by Admin on 01.03.18.
//  Copyright © 2018 Apple, Inc. All rights reserved.
//
import XCTest

class Recipe {
    let name: XCUIElement
    let description: XCUIElement
    let timePreparation: XCUIElement
    let buttonOpenDeleteButton: XCUIElement
    let buttonDelete: XCUIElement
    let cell: XCUIElement
    
    init(cell: XCUIElement) {
        self.cell = cell
        name = cell.staticTexts.element(boundBy: 0)
        description = cell.staticTexts.element(boundBy: 1)
        timePreparation = cell.staticTexts.element(boundBy: 2)
        buttonOpenDeleteButton = cell.buttons.element(boundBy: 0)
        buttonDelete = cell.buttons.element(boundBy: 1)
    }
}
