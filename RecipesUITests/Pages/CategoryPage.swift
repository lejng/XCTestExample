//
//  CategoryPage.swift
//  RecipesUITests
//
//  Created by Admin on 02.03.18.
//  Copyright © 2018 Apple, Inc. All rights reserved.
//

class CategoryPage: BasePage {
    let navigationBarName = "Category"
    let header: Header
    
    init(){
        header = Header(pageName: navigationBarName)
        super.init(mainLocator: BaseTest.app.navigationBars[navigationBarName], name: "Category")
    }
    
    func chooseCategory(category: String) {
        app.tables.staticTexts[category].tap()
        header.clickNavigationButtonByName(name: "Done")
    }
}
