//
//  File.swift
//  
//
//  Created by MacbookPro13 on 12/01/23.
//

import Foundation
import RealmSwift

public class IngredientEntity: Object {
    
    @objc dynamic var id: String = ""
    @objc dynamic var title: String = ""
    @objc dynamic var idMeal: String = ""
    
}
