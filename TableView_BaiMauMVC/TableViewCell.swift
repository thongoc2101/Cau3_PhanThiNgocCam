//
//  TableViewCell.swift
//  Cau3_TableView_MVC
//
//  Created by Cntt04 on 7/5/17.
//  Copyright © 2017 Cntt04. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbName: UILabel!
    
    func configure(name: String) {
        self.lbName.text = name
    }
}
