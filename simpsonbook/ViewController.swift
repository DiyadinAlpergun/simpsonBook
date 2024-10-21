//
//  ViewController.swift
//  simpsonbook
//
//  Created by neodiyadin on 15.08.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var mysimpsons = [Simpsons]()
    var chosensimpson : Simpsons?

    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
        
        let homer = Simpsons(simpsonname: "homer", simpsonjob: "nuclear safety", simpsonimage: UIImage(named: "Homer")!)
        let marge = Simpsons(simpsonname: "marge", simpsonjob: "housewife", simpsonimage: UIImage(named: "Marge")!)
        let bart = Simpsons(simpsonname: "bart", simpsonjob: "student", simpsonimage: UIImage(named: "Bart")!)
        let lisa = Simpsons(simpsonname: "lisa", simpsonjob: "student", simpsonimage: UIImage(named: "Lisa")!)
        let maggie = Simpsons(simpsonname: "maggie", simpsonjob: "baby", simpsonimage: UIImage(named: "Maggie")!)
        
        
        mysimpsons.append(homer)
        mysimpsons.append(marge)
        mysimpsons.append(bart)
        mysimpsons.append(lisa)
        mysimpsons.append(maggie)
      
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mysimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        var content = cell.defaultContentConfiguration()
        content.text = mysimpsons [indexPath.row].name
        cell.contentConfiguration = content
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosensimpson = mysimpsons[indexPath.row]
        self.performSegue(withIdentifier: "todetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "todetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedsimpson = chosensimpson
        }
    }


}

