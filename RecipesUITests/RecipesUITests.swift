//
//  RecipesUITests.swift
//  RecipesUITests
//
//  Created by Admin on 22.02.18.
//  Copyright © 2018 Apple, Inc. All rights reserved.
//

import XCTest

class RecipesUITests: BaseTest {
    
    func testAddAndDeleteRecipe() {

        let recipeName = "Pizza"
        let recipeDescription = "Italiano dishes"
        let recipeTime = "45 min"
        let recipeCategory = "Snack"
        
        let allRecipesPage = AllRecipesPage()
        allRecipesPage.header.clickNavigationButtonByName(name: "Add")
        
        let addRecipePage = AddRecipePage()
        addRecipePage.addRecipe(recipeName: recipeName)
        
        let pizzaRecipePage = RecipePage(recipeName: recipeName)
        pizzaRecipePage.header.clickNavigationButtonByName(name: "Edit")
        pizzaRecipePage.typeDescription(text: recipeDescription)
        pizzaRecipePage.typeTime(text: recipeTime)
        pizzaRecipePage.chooseCategoryButton.tap()
        let categoryPage = CategoryPage()
        categoryPage.chooseCategory(category: recipeCategory)
        pizzaRecipePage.header.clickNavigationButtonByName(name: "Done")
        pizzaRecipePage.header.clickNavigationButtonByName(name: "Recipes")
        
        XCTAssert(allRecipesPage.isRecipeExistBy(name: recipeName, description: recipeDescription, timePreparation: recipeTime), "Error recipe is not added with name :: '\(recipeName)', description :: '\(recipeDescription)', time :: '\(recipeTime)'")
        
        allRecipesPage.deleteRecipeBy(name: recipeName, description: recipeDescription, timePreparation: recipeTime)
        XCTAssert(!allRecipesPage.isRecipeExistBy(name: recipeName, description: recipeDescription, timePreparation: recipeTime), "Error recipe is not deleted with name :: '\(recipeName)', description :: '\(recipeDescription)', time :: '\(recipeTime)'")
    }
}
