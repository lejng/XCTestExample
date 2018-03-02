//
//  AllRecipesPage.swift
//  RecipesUITests
//
//  Created by Admin on 27.02.18.
//  Copyright © 2018 Apple, Inc. All rights reserved.
//

class AllRecipesPage: BasePage {
    let header: Header
    let navigationBarName = "Recipes"
    
    init(){
        header = Header(pageName: navigationBarName)
        super.init(mainLocator: BaseTest.app.navigationBars[navigationBarName], name: "All recipes")
    }
    
    func getRecipesCount() -> Int {
        return app.tables.cells.count
    }
    
    func getRecipeByIndex(index: Int) -> Recipe {
        let cell = app.tables.cells.allElementsBoundByIndex[index]
        return Recipe(cell: cell)
    }
    
    func findRecipeBy(name: String! = nil, description: String! = nil, timePreparation: String! = nil) -> Recipe!{
        for index in 0 ... getRecipesCount() - 1 {
            let recipe = getRecipeByIndex(index: index)
            if(name != nil){
                if(recipe.name.label != name){
                    continue
                }
            }
            if(description != nil){
                if(recipe.description.label != description){
                    continue
                }
            }
            if(timePreparation != nil){
                if(recipe.timePreparation.label != timePreparation){
                    continue
                }
            }
            return recipe
        }
        return nil
    }
    
    func isRecipeExistBy(name: String! = nil, description: String! = nil, timePreparation: String! = nil) -> Bool {
        let recipe = findRecipeBy(name: name, description: description, timePreparation: timePreparation)
        return recipe != nil
    }
    
    func deleteRecipeBy(name: String! = nil, description: String! = nil, timePreparation: String! = nil){
        let recipe = findRecipeBy(name: name, description: description, timePreparation: timePreparation)
        header.clickNavigationButtonByName(name: "Edit")
        recipe!.buttonOpenDeleteButton.tap()
        recipe!.buttonDelete.tap()
        header.clickNavigationButtonByName(name: "Done")
    }
}
