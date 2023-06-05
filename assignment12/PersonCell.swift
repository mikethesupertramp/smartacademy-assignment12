//
//  PersonCell.swift
//  assignment12
//
//  Created by macbook  on 05.06.23.
//

import UIKit

class PersonCell: UITableViewCell {
    @IBOutlet weak var labelName: UILabel!
    
    var showAge: ((PersonModel)->Void)?
    var showOrigin: ((PersonModel)->Void)?
    var person: PersonModel? {
        didSet {
            if let person {
                labelName.text = "\(person.name) \(person.surname)"
            }
        }
    }
    
    @IBAction func showAge(_ sender: Any) {
        if let person {
            showAge?(person)
        }
    }
    
    @IBAction func showOrigin(_ sender: Any) {
        if let person {
            showOrigin?(person)
        }
    }
}
