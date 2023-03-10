//
//  File.swift
//  
//
//  Created by MacbookPro13 on 12/01/23.
//

import Foundation

public struct MealModel: Equatable, Identifiable {
    
    public let id: String
    public let title: String
    public let image: String
    public  var category: String = ""
    public var area: String = ""
    public var instructions: String = ""
    public var tag: String = ""
    public var youtube: String = ""
    public var source: String = ""
    public var ingredients: [IngredientModel] = []
    public var favorite: Bool = false
    
}
