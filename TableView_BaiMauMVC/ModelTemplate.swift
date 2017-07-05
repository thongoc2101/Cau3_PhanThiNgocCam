//
//  ModelTemplate.swift
//  Cau3_TableView_MVC
//
//  Created by Cntt04 on 7/5/17.
//  Copyright © 2017 Cntt04. All rights reserved.
//

import Foundation

class ModelTemplate {
    var name: String
    var listToDo: [String]
    
    init(name: String, listToDo: [String]) {
        self.name = name
        self.listToDo = listToDo
    }
    
    class func section1() -> ModelTemplate{
        return ModelTemplate(name: "Thu 1", listToDo: [
            "Bai 1", "bai 2", "bai 3"
            ])
    }
    
    class func section2() -> ModelTemplate{
        return ModelTemplate(name: "Thu 2", listToDo: [
            "Bai 4", "Bai 5", "Bai 6"
            ])
    }
    
    class func getList() -> [ModelTemplate]{
        return [self.section1(), self.section2()]
    }
}
