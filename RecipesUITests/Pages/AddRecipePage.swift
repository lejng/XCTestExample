//
//  AddRecipePage.swift
//  RecipesUITests
//
//  Created by Admin on 27.02.18.
//  Copyright © 2018 Apple, Inc. All rights reserved.
//

class AddRecipePage: BasePage {
    let header: Header
    let navigationBarName = "Add Recipe"
    
    init(){
        header = Header(pageName: navigationBarName)
        super.init(mainLocator: BaseTest.app.navigationBars[navigationBarName], name: "Add recipe")
    }
    
    func addRecipe(recipeName: String){
        app.textFields["Recipe Name"].typeText(recipeName)
        header.clickNavigationButtonByName(name: "Save")
    }
}
