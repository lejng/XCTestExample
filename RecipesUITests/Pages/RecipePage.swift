//
//  RecipePage.swift
//  RecipesUITests
//
//  Created by Admin on 28.02.18.
//  Copyright © 2018 Apple, Inc. All rights reserved.
//

class RecipePage: BasePage {
    let header: Header
    let nameTextField = BaseTest.app.tables.textFields.element(boundBy: 0)
    let descriptionTextField = BaseTest.app.tables.textFields.element(boundBy: 1)
    let timeTextField = BaseTest.app.tables.textFields.element(boundBy: 2)
    let chooseCategoryButton = BaseTest.app.tables.cells.element(boundBy: 0).buttons["More Info"]
    
    init(recipeName: String){
        header = Header(pageName: recipeName)
        super.init(mainLocator: BaseTest.app.navigationBars[recipeName], name: recipeName)
    }
    
    func typeName(text: String){
        nameTextField.tap()
        nameTextField.typeText(text)
    }
    
    func typeDescription(text: String){
        descriptionTextField.tap()
        descriptionTextField.typeText(text)
    }
    
    func typeTime(text: String){
        timeTextField.tap()
        timeTextField.typeText(text)
    }
}
