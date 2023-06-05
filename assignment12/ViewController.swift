//
//  ViewController.swift
//  assignment12
//
//  Created by macbook  on 04.06.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonDefault: UIButton!
    @IBOutlet weak var buttonByAge: UIButton!
    @IBOutlet weak var buttonByOrigin: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var sortBy: Sort = .byDefault {
        didSet {
            updateButtons(sortBy)
            updateData(sortBy)
        }
    }
    
    var data: [(title: String, array: [PersonModel])] = [] { //Tableview display data
        didSet {
            tableView.reloadData()
        }
    }
    
    var people = peopleDataSet; //Grabbing this from model file
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Update view to display default options
        updateButtons(sortBy)
        updateData(sortBy)
        
    }

    @IBAction func sortByDefault(_ sender: Any) {
        sortBy = .byDefault
    }
    
    @IBAction func sortByAge(_ sender: Any) {
        sortBy = .byAge
    }
    
    @IBAction func sortByOrigin(_ sender: Any) {
        sortBy = .byOrigin
    }
    
    //There is probably a built in method to do
    //this kind of thing but here we go
    func updateButtons(_ sortBy: Sort) {
        buttonDefault.backgroundColor = sortBy == .byDefault ? UIColor.blue : UIColor.lightGray
        buttonByAge.backgroundColor = sortBy == .byAge ? UIColor.blue : UIColor.lightGray
        buttonByOrigin.backgroundColor = sortBy == .byOrigin ? UIColor.blue : UIColor.lightGray
    }
    
    func updateData(_ sortBy: Sort) {
        data.removeAll()
        
        switch sortBy {
        case .byDefault:
            data.append(("", people))
            break
        case .byAge:
            data.append(("Can't legally drink", people.filter({$0.age <= 18})))
            data.append(("Can legally drink", people.filter({$0.age > 18})))
            break
        case .byOrigin:
            Nationality.allValues.forEach { nationality in
                data.append(("\(nationality)".capitalized, people.filter({$0.nationality == nationality})))
            }
            break
        }
    }
    
    func showAge(person: PersonModel) {
        let alert = UIAlertController(
            title: "Persons age",
            message: "\(person.name) is \(person.age) years old",
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        show(alert, sender: self)
    }
    
    func showOrigin(person: PersonModel) {
        let nationality = "\(person.nationality)".capitalized
        let alert = UIAlertController(
            title: "Persons nationality",
            message: "\(person.name) is \(nationality)",
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        show(alert, sender: self)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell") as! PersonCell
        cell.person = data[indexPath.section].array[indexPath.row]
        cell.showAge = self.showAge
        cell.showOrigin = self.showOrigin
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].array.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].title
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
}
