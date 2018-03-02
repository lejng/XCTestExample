//
//  Header.swift
//  RecipesUITests
//
//  Created by Admin on 28.02.18.
//  Copyright © 2018 Apple, Inc. All rights reserved.
//

class Header{
    let pageName: String
    
    init(pageName: String) {
        self.pageName = pageName
    }
    
    func clickNavigationButtonByName(name: String){
        BaseTest.app.navigationBars[pageName].buttons[name].tap()
    }
}
