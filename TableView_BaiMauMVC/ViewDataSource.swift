//
//  ViewDataSource.swift
//  Cau3_TableView_MVC
//
//  Created by Cntt04 on 7/5/17.
//  Copyright © 2017 Cntt04. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.toDoList.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.toDoList[section].listToDo.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.toDoList[section].name
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        
        let toDo = self.toDoList[section].listToDo[indexPath.row]
        
        let cell = self.tblListToDo.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.configure(name: toDo)
        
        return cell
    }
}
