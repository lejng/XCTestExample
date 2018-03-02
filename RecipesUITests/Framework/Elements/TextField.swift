//
//  TextField.swift
//  RecipesUITests
//
//  Created by Admin on 26.02.18.
//  Copyright © 2018 Apple, Inc. All rights reserved.
//

import Foundation

class TextField: BaseElement {
    
    public func typeText(text: String){
        print("\(getType()) \(super.name) :: Typping text : \(text)")
        super.element.typeText(text)
    }
    
    override public func getType() -> String{
        return "TextField";
    }
}
